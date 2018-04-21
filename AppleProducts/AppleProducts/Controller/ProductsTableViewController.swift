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
    
    var productLines = ProductLine.getProducts()
    
    //Mark: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Navigation bar title
        title = "Apple Store"
        
        //Edit bar button Item. Activates editing mode automatically
        navigationItem.rightBarButtonItem = editButtonItem
        
    }
    
    //MARK: UITableViewDataSource, Required Methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return productLines.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productLines[section].products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        let productLine = self.productLines[indexPath.section]
        let product = productLine.products[indexPath.row]
        
        //Set the product property of the ProductTableViewCell
        cell.product = product
        
        return cell
    }

}

extension ProductsTableViewController {
    
    //Section titles
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return productLines[section].name
    }
    
    //Delete rows
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            //Delete the product from the productLine's product array.
            productLines[indexPath.section].products.remove(at: indexPath.row)
            
            //Update the tableView
            //tableView.reloadData() bad way!
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    //Move Rows
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        //Locate the product that will be moved
        let productToMove = productLines[sourceIndexPath.section].products[sourceIndexPath.row]
        
        //Insert the productToMove to the destinationIndexPaths products. Updates our Model
        productLines[destinationIndexPath.section].products.insert(productToMove, at: destinationIndexPath.row)
        
        //Delete the productToMove from the sourceIndexPaths products
        productLines[destinationIndexPath.section].products.remove(at: sourceIndexPath.row)
    }
}
