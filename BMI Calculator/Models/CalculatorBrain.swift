//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rajeev Sharma on 2024-10-22.
//

import Foundation
import UIKit

struct CalculatorBrain {

    var bmi: BMI?

    func getBMIValue() -> String {

        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }

    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight. Eat More...", color: UIColor.systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal. Fit as a fiddle!", color: UIColor.systemGreen)
        } else if bmiValue > 25 {
            bmi = BMI(value: bmiValue, advice: "Overweight. Stop Eating...", color: UIColor.systemRed)
        }
    }
}
