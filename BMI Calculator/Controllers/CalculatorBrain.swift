//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Chirag Jain on 06/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiValue = String(format : "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    mutating func calculateBMI(height : Float,weight : Float) {
        let bmiVal = weight/(height * height)
        
        if bmiVal < 18.5 {
            bmi = BMI(value: bmiVal, advice: "Eat More Pies!!", color: #colorLiteral(red: 0.1208464578, green: 0.7016775012, blue: 1, alpha: 1))
        } else if bmiVal < 24.5 {
            bmi = BMI(value: bmiVal, advice: "Fit as Fiddle", color:  #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1))
        } else {
            bmi = BMI(value: bmiVal, advice: "Eat less pies", color: #colorLiteral(red: 1, green: 0.3685897291, blue: 0.4137401581, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}



