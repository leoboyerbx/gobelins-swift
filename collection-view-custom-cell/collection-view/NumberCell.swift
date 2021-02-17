//
//  NumberCell.swift
//  collection-view
//
//  Created by  on 16/02/2021.
//

import UIKit

class NumberCell: UICollectionViewCell {
    var sliderChangeAction: ((Float) -> ())?
    
    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        sliderChangeAction?(sender.value)
    }
}
