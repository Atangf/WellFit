//
//  CalculatorBrain.swift
//  WellFit
//
//  Created by Atang Fontem on 9/30/25.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiFormated = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormated
    }

    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = (weight / (height * height)) * 703
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "UNDER WEIGHT")
        } else {
            if bmiValue < 24.9 {
                bmi = BMI(value: bmiValue, advice: "NORMAL WEIGHT")
            } else {
                if bmiValue < 29.9 {
                    bmi = BMI(value: bmiValue, advice: "OVER WEIGHT")
                } else {
                    bmi = BMI(value: bmiValue, advice: "OBESE")
                }
            }
        }
                
    }
    
}
