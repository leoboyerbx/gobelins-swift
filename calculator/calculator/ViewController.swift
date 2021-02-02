//
//  ViewController.swift
//  calculator
//
//  Created by  on 02/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorScreen: UILabel!
    
    @IBAction func keyPress1(_ sender: UIButton) {
        appendNumber(number: "1")
    }
    @IBAction func keyPress2(_ sender: UIButton) {
        appendNumber(number: "2")
    }
    @IBAction func keyPress3(_ sender: UIButton) {
        appendNumber(number: "3")
    }
    @IBAction func keyPress4(_ sender: UIButton) {
        appendNumber(number: "4")
    }
    @IBAction func keyPress5(_ sender: UIButton) {
        appendNumber(number: "5")
    }
    @IBAction func keyPress6(_ sender: UIButton) {
        appendNumber(number: "6")
    }
    @IBAction func keyPress7(_ sender: UIButton) {
        appendNumber(number: "7")
    }
    @IBAction func keyPress8(_ sender: UIButton) {
        appendNumber(number: "8")
    }
    @IBAction func keyPress9(_ sender: UIButton) {
        appendNumber(number: "9")
    }
    @IBAction func keyPress0(_ sender: UIButton) {
        appendNumber(number: "0")
    }
    @IBAction func keyPressDot(_ sender: UIButton) {
        appendNumber(number: ".")
    }
    
    @IBAction func keyPressPlus(_ sender: UIButton) {
    }
    @IBAction func keyPressMinus(_ sender: UIButton) {
    }
    @IBAction func keyPressMultiply(_ sender: UIButton) {
    }
    @IBAction func keyPressDivide(_ sender: UIButton) {
    }
    @IBAction func keyPressEqual(_ sender: UIButton) {
    }
    
    enum Operation:Int {
        case plus = 0, minus = 1, multiply = 2, divide = 3
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
    
    func pressOperation(operation: Operation) {
        currentOperation = operation
        if let value = calculatorScreen.text {
            memoryValue = Double(value)
        }
        resetScreen()
    }
    
    func resetScreen () {
        calculatorScreen.text = "0"
    }


}

