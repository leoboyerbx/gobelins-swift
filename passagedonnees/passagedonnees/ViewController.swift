//
//  ViewController.swift
//  passagedonnees
//
//  Created by  on 03/02/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var surnameField: UITextField!
    
    var name: String = ""
    var surname: String = ""
    
    @IBAction func onButtonClicked(_ sender: UIButton?) {
        self.performSegue(withIdentifier: "toWelcome", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        nameField.delegate = self
        surnameField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
            if textField == nameField {
                name = text
                surnameField.becomeFirstResponder()
            } else if textField == surnameField {
                surname = text
                textField.resignFirstResponder() // FERME LE CLAVIER
            }
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toWelcome" {
            if let destVC = segue.destination as? WelcomeViewController {
                destVC.name = name
                destVC.surname = surname
            }
        }
    }


}

