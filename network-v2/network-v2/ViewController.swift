//
//  ViewController.swift
//  network-v2
//
//  Created by  on 16/02/2021.
//


import UIKit
import Kingfisher

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var photos: Photos = []

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NetworkManager.instance.getPhotos { (photos) in
            self.photos = photos
            self.tableView.reloadData()
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell") {
            let photo: PhotoElement = photos[indexPath.row]
            cell.textLabel?.text = photo.title
            let imageUrl = photo.thumbnailURL
            
            // Création d'un objet url
            if let url = URL(string: imageUrl){
                cell.imageView?.kf.setImage(with: url)
            } else {
                print("unable to download image at url.")
            }
            return cell
        } else {
            return UITableViewCell()
        }
    }


}

