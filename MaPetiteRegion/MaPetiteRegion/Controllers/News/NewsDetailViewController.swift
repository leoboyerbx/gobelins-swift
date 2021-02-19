//
//  NewsDetailViewController.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit
import AlamofireImage

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
                let request = URLRequest(url: url)
                imageView.af.setImage(withURLRequest: request,
                                      cacheKey: model.imageUrl,
                                      placeholderImage: UIImage(named: "annecy_bg"),
                                      serializer: nil,
                                      filter: nil,
                                      progress: nil,
                                      progressQueue: .global(),
                                      imageTransition: .noTransition,
                                      runImageTransitionIfCached: false) { (response) in
                    if let _ = response.error {
                        self.imageView.image = UIImage(named: "annecy_bg")
                    }
                }
            } else {
                imageView.image = UIImage(named: "annecy_bg")
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
