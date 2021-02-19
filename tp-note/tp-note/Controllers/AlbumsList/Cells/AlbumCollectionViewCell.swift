//
//  AlbumCollectionViewCell.swift
//  tp-note
//
//  Created by  on 19/02/2021.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(model: AlbumModelUI) {
        titleLabel.text = model.title
    }
}
