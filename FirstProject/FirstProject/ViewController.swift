//
//  ViewController.swift
//  FirstProject
//
//  Created by  on 02/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        label.text = "Exceptionnel 😱"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Test4")
    }


}

