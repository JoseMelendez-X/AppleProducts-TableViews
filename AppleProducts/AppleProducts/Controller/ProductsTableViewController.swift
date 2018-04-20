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
    
    var productLine = ProductLine.getProducts()
    
    //Mark: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Apple Store"
        
    }
    
    //MARK: UITableViewDataSource, Required Methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return productLine.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productLine[section].products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        let productLine = self.productLine[indexPath.section]
        let product = productLine.products[indexPath.row]
        
        //Set the product property of the ProductTableViewCell
        cell.product = product
        
        return cell
    }

}

extension ProductsTableViewController {
    
    //Section titles
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return productLine[section].name
    }
}
