//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Rajeev Sharma on 2024-10-20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        print(Int(sender.value))
    }
}

