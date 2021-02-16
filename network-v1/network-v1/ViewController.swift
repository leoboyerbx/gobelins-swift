//
//  ViewController.swift
//  network-v1
//
//  Created by  on 16/02/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var urlField: UITextField!
    @IBOutlet weak var resultTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        urlField.delegate = self
        TaskManager.instance.doTask { (str) in
            if let number = Int(str),
               number >= 10 {
                AsyncTask.shared.stopTask()
            }
            print(str)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if let url = textField.text {
            NetworkManager.instance.get(url: url) { (result) in
                self.resultTextView.text = result
            }
        }
        return true
    }

}

