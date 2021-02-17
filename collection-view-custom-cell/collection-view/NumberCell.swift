//
//  NumberCell.swift
//  collection-view
//
//  Created by  on 16/02/2021.
//

import UIKit

class NumberCell: UICollectionViewCell {
    var switchChangeAction: ((Float) -> ())?
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func switchChanged(_ sender: UISwitch) {
        if (sender.isOn) {
            switchChangeAction?(1)
        } else {
            switchChangeAction?(0)
        }
    }
    
}
