//
//  HeadTableViewCell.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var activeCitySwitch: UISwitch!
    
    var actionOnSwitch: ((Bool) -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(model: CitySettingsModelUI) {
        self.selectionStyle = .none
        
        activeCitySwitch.thumbTintColor = UIContext.Color.Global.themeColor
        activeCitySwitch.onTintColor = UIContext.Color.Global.lightThemeColor
        
        cityNameLabel.text = model.cityName
        activeCitySwitch.setOn(model.isEnabed, animated: true)
    }

    @IBAction func onSwitch(_ sender: UISwitch) {
        actionOnSwitch?(sender.isOn)
    }
}
