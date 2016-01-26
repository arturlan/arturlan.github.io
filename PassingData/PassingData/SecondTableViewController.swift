//
//  SecondTableViewController.swift
//  PassingData
//
//  Created by Artur Lan on 1/25/16.
//  Copyright © 2016 Artur Lan. All rights reserved.
//

import Foundation
import UIKit

class SecondTableViewController: UITableViewController {
    
    var SecondArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SecondArray.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("SecondCell", forIndexPath: indexPath)
        
        Cell.textLabel?.text = SecondArray[indexPath.row]
        
        return Cell
    }
}
