//
//  NewsViewController.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 + 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 120
        }
        return 300
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "newsHead") as? HeadTableViewCell {
                cell.setup()
                return cell
            }
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as? NewsTableViewCell {
                cell.setup()
                return cell
            }
        }
        return UITableViewCell()
    }

}
