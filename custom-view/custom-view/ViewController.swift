//
//  ViewController.swift
//  custom-view
//
//  Created by  on 17/02/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myCustomView: MyCustomView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
    // --> Défini avec des contraintes
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as? MyTableViewCell {
            cell.actionOnSegmentedControl = {
                switch indexPath.row {
                case 0:
                    self.myCustomView.layer.cornerRadius = 50
                case 1:
                    self.myCustomView.layer.cornerRadius = 150
                case 2:
                    cell.mySwitch.isOn = !cell.mySwitch.isOn
                default:
                    break
                }
            }
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
}

