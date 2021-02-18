//
//  HeadCollectionViewCell.swift
//  MaPetiteRegion
//
//  Created by  on 18/02/2021.
//

import UIKit

class CityCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var nbNewsLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    func setup(model: CitySettingsModelUI) {
        self.backgroundColor = .white
        cityNameLabel.text = model.cityName
        imgView.image = UIImage(named: model.bgImage.rawValue)
    }
    
}
