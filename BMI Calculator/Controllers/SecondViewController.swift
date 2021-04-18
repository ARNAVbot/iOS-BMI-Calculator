//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Arnav Agarwal on 30/03/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

// class name has to be same as file name
class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
