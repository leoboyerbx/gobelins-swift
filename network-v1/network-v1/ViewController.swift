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
        // Do any additional setup after loading the view.
        
        // Créer une classe networkmanager singleton
        // Fonction get prend en paramètre une string (url) et un callback envoyant une string
        
        // NetworkManager.instance.get(url: 'blablabla') { result in
        //  result est le résultat de l'appel
        // }
        
        // Puis une ui: champ texte avec url, puis on affiche le résultat avec un uitextview
    
        urlField.delegate = self
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

