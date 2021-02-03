//
//  ViewController.swift
//  superIATurboDiesel
//
//  Created by  on 03/02/2021.
//

import UIKit

class JojoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = name
    }


}

