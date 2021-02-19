//
//  UserTableViewCell.swift
//  tp-note
//
//  Created by  on 19/02/2021.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(model: UserModelUI) {
        nameLabel.text = model.name
        usernameLabel.text = model.username
        companyLabel.text = model.company
    }

}
