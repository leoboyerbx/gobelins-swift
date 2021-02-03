//
//  ConnectedViewController.swift
//  passagedonnees
//
//  Created by  on 03/02/2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var name:String = ""
    var surname:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = name
        surnameLabel.text = surname
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    

}
