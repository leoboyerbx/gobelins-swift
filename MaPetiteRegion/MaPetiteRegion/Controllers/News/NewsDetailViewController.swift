//
//  NewsDetailViewController.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

class NewsDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fullContentView: UIView!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    
    var modelUI: NewsModelUI?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fullContentView.layer.cornerRadius = 23
        contentTextView.isEditable = false
        if let model = modelUI {
            dateLabel.text = model.date
            titleLabel.text = model.title
            contentTextView.text = model.fullContent
            if let url = URL(string: model.imageUrl) {
                imageView.af.setImage(withURL: url, cacheKey: nil, placeholderImage: UIImage(named: "annecy_bg"), serializer: nil, imageTransition: .noTransition, runImageTransitionIfCached: false, completion: nil)
            }
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
