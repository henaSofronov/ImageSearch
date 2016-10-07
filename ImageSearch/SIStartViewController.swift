//
//  SIStartViewController.swift
//  ImageSearch
//
//  Created by Hena Sofronov on 10/7/16.
//  Copyright © 2016 Hena Sofronov. All rights reserved.
//

import UIKit


class SIStartViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Properties
    
    private static let kSearchSegueId = "SearchSegue"

    // MARK: - Outlets
    
    @IBOutlet weak var searchTextField: UITextField!
    
    // MARK: - TextField Delegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.searchTextField {
            self.performSegue(withIdentifier: SIStartViewController.kSearchSegueId, sender: textField)
        }
        return true
    }
    
    // MARK: - Navigation

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard let text = self.searchTextField.text else {
            self.showErrorAlert(error: "Nothing to search")
            return false
        }
        guard text.isEmpty else {
            self.showErrorAlert(error: "Nothing to search")
            return false
            self.prepare(for: <#T##UIStoryboardSegue#>, sender: <#T##Any?#>)
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueId = segue.identifier else {
            return
        }
        if segueId == SIStartViewController.kSearchSegueId {
            if let destinationViewController = segue.destination as? SISearchResultsViewController {
                destinationViewController.searchString = self.searchTextField.text
            }
            return
        }
    }
    
    // MARK: - Helper

    private func showErrorAlert(error: String) {
        let alert = UIAlertController(title: "Error", message: "Nothing to search", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
