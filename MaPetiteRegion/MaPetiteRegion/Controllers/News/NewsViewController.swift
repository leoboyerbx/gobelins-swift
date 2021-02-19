//
//  NewsViewController.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var models: [NewsModelUI] = []
    var selectedModel: NewsModelUI?

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NetworkManager.instance.getInfos(for: CityManager.instance.currentCity) { infos in
            self.models = NewsModelUI.createModelsFromJsonModel(model: infos)
            self.tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 + models.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 150
        }
        return 330
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "newsHead") as? HeadTableViewCell {
                cell.setup(model: NewsHeadModelUI.createFromCity(named: CityManager.instance.currentCity))
                return cell
            }
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as? NewsTableViewCell {
                cell.setup(model: models[indexPath.row - 1])
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 0 {
            self.selectedModel = models[indexPath.row - 1]
            self.performSegue(withIdentifier: "toNewsDetail", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNewsDetail" {
            if let destVC = segue.destination as? NewsDetailViewController,
               let senderController = sender as? NewsViewController,
               let model = senderController.selectedModel {
                destVC.modelUI = model
            }
        }
    }

}
