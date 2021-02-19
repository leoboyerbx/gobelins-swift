//
//  PhotoCollectionViewCell.swift
//  tp-note
//
//  Created by  on 19/02/2021.
//

import UIKit
import Kingfisher

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func setup(model: Photo) {
        if let url = URL(string: model.url ?? ""){
            self.imageView.kf.setImage(with: url)
        } else {
            print("show placeholder")
        }
    }
    
}
