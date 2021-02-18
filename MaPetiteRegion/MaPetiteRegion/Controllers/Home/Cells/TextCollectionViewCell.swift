//
//  HeadCollectionViewCell.swift
//  MaPetiteRegion
//
//  Created by  on 18/02/2021.
//

import UIKit

class TextCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var textLabel: UILabel!
    
    func setup(text:String = "Vous êtes à...") {
        self.backgroundColor = .white
        textLabel.text = text
    }
    
}
