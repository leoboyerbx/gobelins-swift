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
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "newsHead") as? HeadTableViewCell {
            cell.cityName.text = "Annecy"
            cell.newsNumberLabel.text = "12 news"
            cell.cityImage.image = UIImage(named: "annecy_img")
//            cell.backgroundColor = UIContext.Color.Global.annecyBGColor
            cell.roundedBottom.layer.cornerRadius = 30
            return cell
        } else {
            return UITableViewCell()
        }
    }

}
