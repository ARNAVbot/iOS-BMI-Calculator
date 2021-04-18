//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

// This controller is , by default , the 1st thing that comes onto the screen
class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        //        print(String(format:"%.2f", sender.value))
        let height = String(format:"%.2f", sender.value)
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        //        print(String(format:"%.0f", sender.value))
        //        print(Int(sender.value))
        let weight = String(format:"%.0f", sender.value)
        weightLabel.text = "\(weight) Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
//        let bmi = weight / pow(height, 2)
//        print(bmi)
//
//        bmiValue = String(format: "%.1f", bmi)
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        // The following commented out section indicates how to navigate to a dfifferent controller
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//
//        // self holds the current view controller reference
//        self.present(secondVC, animated: true, completion: nil)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // this means we will be navigating to ResultViewcontroller only
        // This is useful in a system where there can be multiple destinations
        if segue.identifier == "goToResult" {
            // the following thing is called Downcasting. This is done using the "as" keyword
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

