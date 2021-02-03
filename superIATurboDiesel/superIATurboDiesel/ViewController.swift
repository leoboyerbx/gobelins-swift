//
//  ViewController.swift
//  superIATurboDiesel
//
//  Created by  on 03/02/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var whereToField: UITextField!
    var whereTo: String = ""
    
    @IBAction func onClickGo(_ sender: UIButton) {
        if whereTo == "" {
            // On essaye de décupérer la valeur, au cas ou l'utilisateur appuie sur le bouton sans ranger son clavier
            if let text = whereToField.text {
                whereTo = text
            }
        }
        choseWhereToAndGo()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        whereToField.delegate = self
    }
    
    func choseWhereToAndGo () {
        let lowercased = whereTo.lowercased()
        switch lowercased {
        case "voir vincent", "voir vince":
            self.performSegue(withIdentifier: "toVincent", sender: nil)
        case "voir jojo", "voir johann":
            self.performSegue(withIdentifier: "toJojo", sender: nil)
        case "voir ma calculatrice":
            self.performSegue(withIdentifier: "toCalc", sender: nil)
        default:
            print("non reconnu")
            return
        }
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
            whereTo = text
            textField.resignFirstResponder() // FERME LE CLAVIER
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toVincent" {
            if let destVC = segue.destination as? VincentViewController {
                destVC.name = "Vinceeeent"
            }
        } else if segue.identifier == "toJojo" {
            if let destVC = segue.destination as? JojoViewController {
                destVC.name = "Jojoooo"
            }
        }
    }


}

