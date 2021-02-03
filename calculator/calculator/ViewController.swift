//
//  ViewController.swift
//  calculator
//
//  Created by  on 02/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorScreen: UILabel!
    @IBOutlet weak var memoryScreen: UILabel!
    
    @IBAction func keyPressNumber(_ sender: UIButton) {
        appendNumber(number: String(sender.tag))
    }
    
    @IBAction func keyPressDot(_ sender: UIButton) {
        appendDot()
    }
    
    @IBAction func keyPressOperand(_ sender: UIButton) {
        var operation: Operation
        switch sender.tag {
            case 0:
                operation = Operation.plus
            case 1:
                operation = Operation.minus
            case 2:
                operation = Operation.multiply
            case 3:
                operation = Operation.divide
            default:
                return
        }
        pressOperation(operation: operation)
    }
    
    @IBAction func keyPressAction(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            resetAll()
        case 1:
            correct()
        case 2:
            showResult()
        default:
            return
        }
    }
    
    
    enum Operation:String {
        case plus = "+", minus = "-", multiply = "x", divide = "÷"
    }
    
    var currentOperation: Operation? = nil
    var memoryValue: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func appendNumber(number: String) {
        if calculatorScreen.text == "0" {
            calculatorScreen.text = number
        } else {
            calculatorScreen.text! += number
        }
    }
    
    func appendDot() {
        if calculatorScreen.text == "0" {
            calculatorScreen.text = "."
        } else {
            if let text = calculatorScreen.text {
                if !text.contains(".") {
                    calculatorScreen.text! += "."
                }
            }
        }
    }
    
    func pressOperation(operation: Operation) {
        if let value = calculatorScreen.text {
            if value != "0" {
                if let intermediateResult = getResult() {
                    memoryValue = intermediateResult
                    memoryScreen.text = formatResult(result: intermediateResult)
 + operation.rawValue
                } else {
                    memoryValue = Double(value)
                    memoryScreen.text = value + operation.rawValue
                }
                currentOperation = operation
                resetScreen()
            }
        }
        resetScreen()
    }
    
    func resetScreen () {
        calculatorScreen.text = "0"
    }
    
    func showResult () {
        if let result = getResult() {
            resetAll()
            calculatorScreen.text = formatResult(result: result)
        }
    }
    
    func formatResult (result: Double) -> String {
        if floor(result) == result {
            return "\(Int(result))"
        } else {
            return "\(result)"
        }
    }
    
    func getResult () -> Double? {
        if let operation = currentOperation,
           let member1 = memoryValue,
           let member2Text = calculatorScreen.text,
           let member2:Double = Double(member2Text)
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
    
    func resetAll() {
        resetScreen()
        memoryScreen.text = ""
        currentOperation = nil
        memoryValue = nil
    }
    
    func correct () {
        if let text = calculatorScreen.text {
            if text.count > 1 {
                calculatorScreen.text = String(text.dropLast())
            } else {
                calculatorScreen.text = "0"
            }
        }
    }
}

