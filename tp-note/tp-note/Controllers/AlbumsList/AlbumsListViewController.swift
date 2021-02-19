//
//  AlbumsListViewController.swift
//  tp-note
//
//  Created by  on 19/02/2021.
//

import UIKit

class AlbumsListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var userId:Int = 0
    var albums: [AlbumModelUI] = []

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = self.view.frame.width
        let halfScreen = screenWidth/2.0
        return CGSize(width:halfScreen, height: 130 )
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return albums.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "albumCell", for: indexPath) as? AlbumCollectionViewCell {
            cell.setup(model: albums[indexPath.row])
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NetworkManager.instance.getAlbums(from: userId) { (albums) in
            AlbumModelUI.createPopulatedModelsFromJsonModel(model: albums) { (models) in
                self.albums = models
                self.collectionView.reloadData()
            }
        }
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
