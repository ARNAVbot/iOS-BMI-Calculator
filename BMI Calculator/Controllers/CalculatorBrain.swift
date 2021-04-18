//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Arnav Agarwal on 31/03/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            print("underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color : #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            print("normal weight")
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color : #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            print("over weight")
            bmi = BMI(value: bmiValue, advice: "Eat less pies !", color : #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
