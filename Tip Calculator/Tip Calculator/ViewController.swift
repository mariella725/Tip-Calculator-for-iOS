//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Mariella Sypa on 12/1/15.
//  Copyright © 2015 Mariella Sypa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!

    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        //Sets the title in the Navigation Bar 
        self.title = "Tip Calculator"
        
        
        // Do any additional setup after loading the view, typically from a nib.
       
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChanged(sender: AnyObject) {
        print("User editing bill")
        

        let tipPercentages = [0.15, 0.2, 0.25]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
    }
}

