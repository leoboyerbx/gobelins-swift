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

    init () {
        reset()
    }
    
    /// Resets calc to its initial values
    func reset () {
        currentOperation = nil
        memoryValue = nil
        currentValue = "0"
    }
    
    
    /// Appends a number to the current typing number
    /// - Parameter number: The number to append
    func appendNumber(number: String)
    {
        if currentValue == "0" {
            currentValue = number
        } else {
            currentValue += number
        }
    }
    
    
    /// Appends a point to the current typing number
    func appendDot() {
        if currentValue == "0" {
            currentValue = "."
        } else {
            if !currentValue.contains(".") {
                currentValue += "."
            }
        }
    }
    
    /// Calculates the result with current operands and operator
    func calcResult () {
        if let result = getResult() {
            reset()
            currentValue = formatResult(result: result)
        }
    }
    
    /// Gets the result if each operand and the operator are defined
    /// - Returns: The result
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
    
    /// Removes the last number of the current typed number
    func correct () {
        if currentValue.count > 1 {
            currentValue = String(currentValue.dropLast())
        } else {
            currentValue = "0"
        }
    }
    
    
    /// Defines the current operator
    /// - Parameter operation
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
    
    /// Format a calc result to strip numbers after the point if the result is and int
    /// - Parameter result: The result to format
    /// - Returns: The formatted result
    func formatResult (result: Double) -> String {
        if floor(result) == result {
            return "\(Int(result))"
        } else {
            return "\(result)"
        }
    }

    
}
