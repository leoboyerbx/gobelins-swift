//
//  InputViewController.swift
//  carnet-adresses
//
//  Created by  on 15/02/2021.
//

import UIKit

class InputViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var surnameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    
    var dataManager = DataManager.instance
    
    @IBAction func onButtonClicked(_ sender: UIButton?) {
        if getValues() {
            if let controller = self.presentingViewController as? ContactsViewController{
                controller.tableView.reloadData()
            }

            self.dismiss(animated: true) {}
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.delegate = self
        surnameField.delegate = self
        phoneField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func getValues () -> Bool {
        if let name = nameField.text,
           let surname = surnameField.text,
           let phone = phoneField.text {
            DataManager.instance.contacts.append(Contact(name: name, surname: surname, phone: phone))
            return true
           }
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let _ = textField.text {
            if textField == nameField {
                surnameField.becomeFirstResponder()
            } else if textField == surnameField {
                phoneField.becomeFirstResponder()
            } else if textField == phoneField {
                textField.resignFirstResponder() // FERME LE CLAVIER
            }
        }
        return true
    }

}
