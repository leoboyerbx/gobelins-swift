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
    
    func setup() {
        self.cityName.text = "Annecy"
        self.newsNumberLabel.text = "12 news"
        self.cityImage.image = UIImage(named: "annecy_img")
        self.backgroundColor = UIContext.Color.Global.annecyBGColor
        self.roundedBottom.layer.cornerRadius = 30
        self.roundedBottom.backgroundColor = .white
    }

}
