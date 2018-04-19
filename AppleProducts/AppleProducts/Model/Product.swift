//
//  Product.swift
//  AppleProducts
//
//  Created by Jose Melendez on 4/19/18.
//  Copyright © 2018 Jose Melendez. All rights reserved.
//

import UIKit

class Product {
    let image: UIImage
    let title: String
    let description: String
    let rating: ProductRating
    
    init(imageNamed: String, title: String, description: String) {
        
        if let image = UIImage(named: imageNamed) {
             self.image = image
        }else {
            self.image = UIImage(named: "default")!
        }
        
        self.title = title
        self.description = description
        
        //initializes to a defualt rating
        self.rating = .unrated
    }
}

enum ProductRating {
    case unrated
    case average
    case ok
    case good
    case brilliant
}

