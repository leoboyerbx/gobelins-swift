//
//  ViewController.swift
//  calculator
//
//  Created by  on 02/02/2021.
//

import UIKit

class ViewController: UIViewController {

    let brain = CalcBrain()
    @IBOutlet weak var calculatorScreen: UILabel!
    @IBOutlet weak var memoryScreen: UILabel!
    
    @IBAction func keyPressNumber(_ sender: UIButton) {
        brain.appendNumber(number: String(sender.tag))
        updateView()
    }
    
    @IBAction func keyPressDot(_ sender: UIButton) {
        brain.appendDot()
        updateView()
    }
    
    @IBAction func keyPressOperand(_ sender: UIButton) {
        var operation: CalcBrain.Operation
        switch sender.tag {
            case 0:
                operation = .plus
            case 1:
                operation = .minus
            case 2:
                operation = .multiply
            case 3:
                operation = .divide
            default:
                return
        }
        brain.setOperation(operation: operation)
        updateView()
    }
    
    @IBAction func keyPressAction(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            brain.reset()
        case 1:
            brain.correct()
        case 2:
            brain.calcResult()
        default:
            return
        }
        updateView()
    }
    
    func updateView() {
        if let memory = brain.memoryValue,
           let operation = brain.currentOperation{
            memoryScreen.text = brain.formatResult(result: memory) + operation.rawValue
        } else {
            memoryScreen.text = ""
        }
        calculatorScreen.text = brain.currentValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

