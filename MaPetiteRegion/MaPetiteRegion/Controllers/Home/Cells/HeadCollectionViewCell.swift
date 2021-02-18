//
//  HeadCollectionViewCell.swift
//  MaPetiteRegion
//
//  Created by  on 18/02/2021.
//

import UIKit

class HeadCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var roundedBottom: UIView!
    
    func setup(cityName: String) {
        self.roundedBottom.layer.cornerRadius = 34
        self.roundedBottom.backgroundColor = .white
        self.cityNameLabel.text = cityName
    }
    
}
