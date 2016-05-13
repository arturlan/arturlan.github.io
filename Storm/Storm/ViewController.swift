//
//  ViewController.swift
//  Storm
//
//  Created by Artur Lan on 2/14/16.
//  Copyright © 2016 Artur Lan. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityTempLabel: UILabel!
    
    @IBAction func getDataBittonClicked(sender: AnyObject) {
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getWeatherData("")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getWeatherData(urlString : String) {
        
    }
    
    func setLabels(weatherData: NSData) {
        
    }


}

