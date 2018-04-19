//
//  ProductsTableViewController.swift
//  AppleProducts
//
//  Created by Jose Melendez on 4/19/18.
//  Copyright © 2018 Jose Melendez. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    //MARK: Data Models
    
    var products = ProductLine.getProducts()[1].products
    
    //Mark: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Apple Store"
        
    }
    
    //MARK: UITableViewDataSource, Required Methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        let product = products[indexPath.row]
        
        //Set the product property of the ProductTableViewCell
        cell.product = product
        
        return cell
    }

}
