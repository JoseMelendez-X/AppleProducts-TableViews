//
//  ProductTableViewCell.swift
//  AppleProducts
//
//  Created by Jose Melendez on 4/19/18.
//  Copyright © 2018 Jose Melendez. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    //MARK: Data Model
    
    var product: Product?{
        didSet{
            self.updateUI()
        }
    }

    //MARK: IBOutlets
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    
    //MARK: Methods
    
    func updateUI() {
        productImageView.image = product?.image
        productTitleLabel.text = product?.title
        productDescriptionLabel.text = product?.description
    }
    
    
}
