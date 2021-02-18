//
//  SettingsViewController.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 + CityManager.instance.cities.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 150
        }
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "settingsHead") as? SettingsHeadTableViewCell {
                cell.setup()
                return cell
            }
        }
        if let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell") as? SettingsTableViewCell {
            cell.setup(model: CityManager.instance.cities[indexPath.row - 1])
            cell.actionOnSwitch = { val in
                CityManager.instance.cities[indexPath.row - 1].isEnabed = val
            }
            return cell
        }
        return UITableViewCell()
    }

}
