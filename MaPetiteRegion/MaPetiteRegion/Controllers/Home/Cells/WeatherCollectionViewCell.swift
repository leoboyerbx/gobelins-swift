//
//  HeadCollectionViewCell.swift
//  MaPetiteRegion
//
//  Created by  on 18/02/2021.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    
    func setup() {
        self.backgroundColor = .white
        
        temperatureLabel.text = "12°"
        weatherLabel.text = "Plouie"
    }
    
}
