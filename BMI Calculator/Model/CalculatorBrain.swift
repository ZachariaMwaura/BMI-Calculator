//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zach Mwaura on 1/13/24.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
        
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case ...18.4:
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "Eat less Pies!", color: UIColor.red)
        default:
            print("error")
        }
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor
    {
        return bmi?.color ?? .white
    }
    
    mutating func getBMIValue() -> String {
        let bmiValue = String(format: "%0.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
}
