//
//  PhotoCollectionViewCell.swift
//  tp-note
//
//  Created by  on 19/02/2021.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func setup(model: Photo) {
        print(model.url ?? "")
    }
    
}
