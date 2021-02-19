//
//  NewsTableViewCell.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit
import AlamofireImage

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsHat: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var containerRoundView: UIView!
    @IBOutlet weak var textBGView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setup(model: NewsModelUI) {
        self.newsTitle.text = model.title
        self.newsHat.text = model.hat
        if let url = URL(string: model.imageUrl) {
            let request = URLRequest(url: url)
            newsImage.af.setImage(withURLRequest: request,
                                  cacheKey: model.imageUrl,
                                  placeholderImage: UIImage(named: "annecy_bg"),
                                  serializer: nil,
                                  filter: nil,
                                  progress: nil,
                                  progressQueue: .global(),
                                  imageTransition: .noTransition,
                                  runImageTransitionIfCached: false,
                                  completion: nil
            )
        }
        containerRoundView.layer.cornerRadius = 23
        textBGView.backgroundColor = UIContext.Color.News.cellBGColor
        self.selectionStyle = .none
    }


}
