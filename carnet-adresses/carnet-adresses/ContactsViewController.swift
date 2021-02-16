//
//  ViewController.swift
//  carnet-adresses
//
//  Created by  on 15/02/2021.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var name:String = ""
    var surname:String = ""
    var phone:String = ""
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.instance.contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell") as? ContactTableViewCell {
            let contact = DataManager.instance.contacts[indexPath.row]
            cell.nameLabel?.text = contact.name
            cell.surnameLabel?.text = contact.surname
            cell.phoneLabel?.text = contact.phone
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteContact(at: indexPath.row)
        }
    }
    
    func deleteContact(at: Int) {
        DataManager.instance.contacts.remove(at: at)
        tableView.deleteRows(at: [IndexPath(row: at, section: 0)], with: UITableView.RowAnimation.automatic)
    }

    @IBAction func deleteButtonClicked(_ sender: UIBarButtonItem) {
        tableView.isEditing = !tableView.isEditing
    }
    @IBAction func addButtonClicked(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "toAdd", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAdd" {
            segue.destination.modalPresentationStyle = .fullScreen
        }
    }
    
}

