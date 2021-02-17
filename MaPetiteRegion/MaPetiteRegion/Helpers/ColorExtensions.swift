//
//  ColorExtensions.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

extension UIColor {
    static func rgba(r: Float, g: Float, b: Float, a: Float) -> UIColor {
        return UIColor(red: CGFloat(r/255.0), green: CGFloat(g/255.0), blue: CGFloat(b/255.0), alpha: CGFloat(a))
    }
}
