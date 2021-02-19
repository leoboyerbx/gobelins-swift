//
//  UsersListViewController.swift
//  tp-note
//
//  Created by  on 19/02/2021.
//

import UIKit

class UsersListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var users: [UserModelUI] = []
    var selectedUserId: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        NetworkManager.instance.getUsers { (users) in
            self.users = UserModelUI.createModelsFromJsonModel(model: users)
            self.tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? UserTableViewCell {
            cell.setup(model: users[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedUserId = users[indexPath.row].id
        self.performSegue(withIdentifier: "toAlbumsList", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAlbumsList" {
            if let destVC = segue.destination as? AlbumsListViewController,
               let senderController = sender as? UsersListViewController,
               let id = senderController.selectedUserId {
                destVC.userId = id
            }
        }
    }

}
