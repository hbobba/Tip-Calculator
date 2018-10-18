//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Harshitha Bobba on 10/4/18.
//  Copyright © 2018 Harshitha Bobba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var peopleSlider: UISlider!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var eachPersonAmountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        
    }
    func calculateEverything() {
        guard let input = amountTextField.text, !input.isEmpty else {
            return
        }
        
        let amount = Double(input)!
        let tipPercent = tipSlider.value
        tipPercentageLabel.text = "Tip Percentage : \(round(tipPercent * 100) / 100)"
        let tipAmount = (round(amount) * Double(tipPercent)) / 100
        tipAmountLabel.text = "Tip Amount : \(round(tipAmount * 100) / 100)"
        
        let totalAmount = amount + tipAmount;
        totalAmountLabel.text = "Total Amount : \(round(totalAmount * 100) / 100)"
        
        let numberOfPeople = Int(peopleSlider.value)
        peopleLabel.text = "Total People: \(numberOfPeople)"
        
        eachPersonAmountLabel.text = "Each Amount : \(round(totalAmount/Double(numberOfPeople)) * 100 / (100))"
        
        
    }
    
    @IBAction func peopleChanged(_ sender: Any) {
        calculateEverything()
    }
    
    @IBAction func tipChanged(_ sender: Any) {
        calculateEverything()
    }
    @IBAction func amountChanged(_ sender: Any) {
        calculateEverything()
    }
    
 


}

