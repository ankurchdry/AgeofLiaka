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
    
    @IBAction func convertToRealDogYear(sender: UIButton) {
        
        let sizeAgeOfLiaka = Double ((enterNumberAgeOfLiaka.text as NSString).doubleValue)
        
        let constantAfterWhichAgeConversionChanges = 2
        
        let conversionConstantForFirstTwoYears = 10.5
        
        let conversionConstantForRestOfYears = 4
        
        displayLaikaAge.hidden = false
        
        if sizeAgeOfLiaka <= 2 {
            
            displayLaikaAge.text = "\(sizeAgeOfLiaka * conversionConstantForFirstTwoYears )" + " Age In Real Years"
            
        }
            /*This part of code will evaluate any number greater than 2 and use the factor constant to either mulitple by  10.5 or 4 */
        else
        {
            displayLaikaAge.text = "\((Double(constantAfterWhichAgeConversionChanges) * conversionConstantForFirstTwoYears)  +  ((sizeAgeOfLiaka - Double (constantAfterWhichAgeConversionChanges)) * Double (conversionConstantForRestOfYears) ) )" + " Age In Real Years"
            
        }
        
        enterNumberAgeOfLiaka.resignFirstResponder()
        
    }

}

