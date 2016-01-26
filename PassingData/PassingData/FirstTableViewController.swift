//
//  ViewController.swift
//  PassingData
//
//  Created by Artur Lan on 1/25/16.
//  Copyright © 2016 Artur Lan. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    
    var FirstTableArray = [String]()
    
    var SecondArray = [SecondTable]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FirstTableArray = ["First", "Second", "Third"]
        
        SecondArray = [SecondTable(SecondTitle: ["FirstFirst", "SecondFirst", "ThirdFirst"], Pic: ""),
            SecondTable(SecondTitle: ["FirstSecond", "SecondSecond", "ThirdSecond"], Pic: ""),
            SecondTable(SecondTitle: ["FirstThird", "SecondThird", "ThirdThird"], Pic: "")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstTableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = FirstTableArray[indexPath.row]
        
        return Cell
    }

//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        var indexPath: NSIndexPath = self.tableView.indexPathForSelectedRow()!
//        
//        var DestViewController = segue.destinationViewController as SecondTableViewController
//        
//        var Second
//    
//    }
    
}

