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
    
    func setup(temperature: String, weather: String, weatherDesc: String) {
        self.backgroundColor = .white
        
        temperatureLabel.text = "\(temperature)°"
        weatherLabel.text = weatherDesc
        
        if weather == "Clear" {
            imageView.image = UIImage(named: "meteo_sunny_bg")
        } else {
            imageView.image = UIImage(named: "meteo_bg")
        }
    }
    
}
