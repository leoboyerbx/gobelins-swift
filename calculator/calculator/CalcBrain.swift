//
//  CalcBrain.swift
//  calculator
//
//  Created by  on 03/02/2021.
//

import Foundation

class CalcBrain {
    enum Operation:String {
        case plus = "+", minus = "-", multiply = "x", divide = "÷"
    }
    
    var currentOperation: Operation? = nil
    var memoryValue: Double?
    var currentValue: String = "0"

    
    func reset () {
        currentOperation = nil
        memoryValue = nil
        currentValue = "0"
    }
    
    func appendNumber(number: String)
    {
        if currentValue == "0" {
            currentValue = number
        } else {
            currentValue += number
        }
    }
    
    func appendDot() {
        if currentValue == "0" {
            currentValue = "."
        } else {
            if !currentValue.contains(".") {
                currentValue += "."
            }
        }
    }
    
    func calcResult () {
        if let result = getResult() {
            reset()
            currentValue = formatResult(result: result)
        }
    }
    
    func getResult () -> Double? {
        if let operation = currentOperation,
           let member1 = memoryValue,
           let member2:Double = Double(currentValue)
        {
            switch operation {
            case Operation.plus:
                return member1 + member2
            case .minus:
                return member1 - member2
            case .multiply:
                return member1 * member2
            case .divide:
                return member1 / member2
            }
        }
        return nil
    }
    
    func correct () {
        if currentValue.count > 1 {
            currentValue = String(currentValue.dropLast())
        } else {
            currentValue = "0"
        }
    }
    
    func setOperation(operation: Operation) {
        if currentValue != "0" {
            if let intermediateResult = getResult() {
                memoryValue = intermediateResult
            } else {
                memoryValue = Double(currentValue)
            }
            currentOperation = operation
            currentValue = "0"
        } else {
            if operation == Operation.minus {
                currentValue = "-"
            }
        }
    }
    
    func formatResult (result: Double) -> String {
        if floor(result) == result {
            return "\(Int(result))"
        } else {
            return "\(result)"
        }
    }

    
}
