//
//  MyViewController.swift
//  navigation
//
//  Created by  on 03/02/2021.
//

import UIKit

class CViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        theLabel.text = "Je suis C"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
