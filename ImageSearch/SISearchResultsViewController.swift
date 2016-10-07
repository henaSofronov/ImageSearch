//
//  SISearchResultsViewController.swift
//  ImageSearch
//
//  Created by Hena Sofronov on 10/7/16.
//  Copyright © 2016 Hena Sofronov. All rights reserved.
//

import UIKit

class SISearchResultsViewController: UIViewController, UITextFieldDelegate {
    // MARK: - Properties
    var searchString: String?

    // MARK: - Outlets
    @IBOutlet weak var imagesCollectionView: UICollectionView!
    @IBOutlet weak var searchTextField: UITextField!
    
    // MARK: - View Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Actions
    @IBAction func searchButtonPressed(_ sender: AnyObject) {
        self.updateImages()
    }
    @IBAction func sizeSegmentControlValueChanged(_ sender: AnyObject) {
        self.imagesCollectionView.reloadData()
    }
    
    // MARK: - TextField Delegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.updateImages()
        return true
    }
    
    // MARK: - Navigation
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    // MARK: - Model Interaction
    
    private func updateImages() {
        
    }
}
