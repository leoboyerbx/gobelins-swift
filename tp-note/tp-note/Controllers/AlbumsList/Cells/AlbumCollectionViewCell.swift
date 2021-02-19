//
//  AlbumCollectionViewCell.swift
//  tp-note
//
//  Created by  on 19/02/2021.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailsCollection: UICollectionView!
    
    var photos: Photos = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "thumbnailCell", for: indexPath) as? ThumbnailCollectionViewCell {
            cell.setup(model: photos[indexPath.row])
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        thumbnailsCollection.delegate = self
        thumbnailsCollection.dataSource = self
    }
    
    func setup(model: AlbumModelUI) {
        titleLabel.text = model.title
        self.photos = model.photos
        thumbnailsCollection.reloadData()
    }
}
