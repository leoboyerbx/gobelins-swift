//
//  HeadTableViewCell.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

class SettingsHeadTableViewCell: UITableViewCell {

    @IBOutlet weak var roundedBottom: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup() {
        self.roundedBottom.layer.cornerRadius = 34
        self.roundedBottom.backgroundColor = .white
        
        self.selectionStyle = .none
        self.backgroundColor = UIContext.Color.Settings.headerBGColor
    }

}
