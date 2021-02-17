//
//  MyCustomView.swift
//  custom-view
//
//  Created by  on 17/02/2021.
//

import UIKit

class MyCustomView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBOutlet var testLabel: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = .blue
    }
    
}
