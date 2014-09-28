//
//  ViewController.swift
//  Age of Laika
//
//  Created by ankurchdry on 9/24/14.
//  Copyright (c) 2014 ankurchdry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNumberAgeOfLiaka: UITextField!
    
    @IBOutlet weak var displayLaikaAge: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertLaikaAgeToHumanYears(sender: UIButton) {
        
        let sizeAgeOfLiaka = Double ((enterNumberAgeOfLiaka.text as NSString).doubleValue)
        
        let conversionConstant = 7.5
        
        displayLaikaAge.hidden = false
        
        displayLaikaAge.text = "\(sizeAgeOfLiaka * conversionConstant )" + " is the size of Laika in Dog years"
        
        enterNumberAgeOfLiaka.resignFirstResponder()
        
        
    }
    

}

