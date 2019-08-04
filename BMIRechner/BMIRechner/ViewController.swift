//
//  ViewController.swift
//  BMIRechner
//
//  Created by Kilian Kellermann on 20.02.17.
//  Copyright © 2017 Kilian Kellermann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kgField: UITextField!
    @IBOutlet weak var cmField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateTapped(_ sender: Any) {
       
        guard let kgValue = kgField.text, let cmValue = cmField.text else {
            return
        }
        guard let kg = Int(kgValue), let cm = Int(cmValue) else {
            return
        }
        
        let bmi = MathLib.calcBMI(forKg: kg, andCm: cm)
        
        resultLabel.text = "BMI: \(bmi)"
        resultLabel.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

