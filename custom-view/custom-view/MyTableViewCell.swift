//
//  MyTableViewCell.swift
//  custom-view
//
//  Created by  on 17/02/2021.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    
    var actionOnSegmentedControl: (() -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func onSegmentedControlChanged(_ sender: UISegmentedControl) {
        actionOnSegmentedControl?()
    }
}
