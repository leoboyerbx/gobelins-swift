//
//  HeadTableViewCell.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

class HeadTableViewCell: UITableViewCell {

    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var newsNumberLabel: UILabel!
    @IBOutlet weak var roundedBottom: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(model: NewsHeadModelUI) {
        self.cityName.text = model.cityName
        self.newsNumberLabel.text = model.nbNews
        self.cityImage.image = UIImage(named: model.imageName.rawValue)
        self.backgroundColor = model.backgroundColor
        self.roundedBottom.layer.cornerRadius = 34
        self.roundedBottom.backgroundColor = .white
        
        self.selectionStyle = .none
    }

}
