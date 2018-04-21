//
//  ProductDetailTableViewController.swift
//  AppleProducts
//
//  Created by Jose Melendez on 4/21/18.
//  Copyright © 2018 Jose Melendez. All rights reserved.
//

import UIKit

class ProductDetailTableViewController: UITableViewController {
    
    //MARK: Data Model
    
    var product: Product? = ProductLine.getProducts()[0].products[0]
    
    //MARK: IB Outlets
    
    @IBOutlet weak var productImageView: UIImageView!{
        didSet{
            productImageView.image = product?.image
        }
    }
    @IBOutlet weak var productTitleTextField: UITextField!{
        didSet{
            productTitleTextField.text = product?.title
        }
    }
    @IBOutlet weak var productDescriptionTextView: UITextView!{
        didSet{
            productDescriptionTextView.text = product?.description
        }
    }
    
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Navgation bar title
        title = "Edit Product"
        
        //Textfield delegate
        productTitleTextField.delegate = self
    }
    
    //Removes highlighting of the textfield
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if indexPath.section == 1 && indexPath.row == 0 {
            return nil
        }  else {
            return indexPath
        }
    }
}

extension ProductDetailTableViewController: UITextFieldDelegate {
    
    //Dismisses keyboard when return key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension ProductDetailTableViewController {
    
    //UIScrollViewDelegate Protocol
    
    //Dimisses keyboard when user begins to to scroll
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        productDescriptionTextView.resignFirstResponder()
        productTitleTextField.resignFirstResponder()
    }
}
