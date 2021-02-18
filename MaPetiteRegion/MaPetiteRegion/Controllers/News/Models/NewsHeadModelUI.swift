//
//  NewsHeadModelUI.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

struct NewsHeadModelUI {
    
    
    var cityName: String = ""
    var nbNews: String = ""
    var imageName: CityManager.ImageName = .Annecy
    var backgroundColor: UIColor = .cyan
    
    static func annecyDefault (nbNews: Int = 25) -> NewsHeadModelUI {
        return NewsHeadModelUI(cityName: "Annecy", nbNews: "\(nbNews) news", imageName: .Annecy, backgroundColor: UIContext.Color.Global.annecyBGColor)
    }
    static func grenobleDefault (nbNews: Int = 25) -> NewsHeadModelUI {
        return NewsHeadModelUI(cityName: "Grenoble", nbNews: "\(nbNews) news", imageName: .Grenoble, backgroundColor: UIContext.Color.Global.grenobleBGColor)
    }
    static func lyonDefault (nbNews: Int = 25) -> NewsHeadModelUI {
        return NewsHeadModelUI(cityName: "Lyon", nbNews: "\(nbNews) news", imageName: .Lyon, backgroundColor: UIContext.Color.Global.lyonBGColor)
    }
    static func annemasseDefault (nbNews: Int = 25) -> NewsHeadModelUI {
        return NewsHeadModelUI(cityName: "Annemasse", nbNews: "\(nbNews) news", imageName: .Annemasse, backgroundColor: UIContext.Color.Global.annemasseBGColor)
    }
    static func aixDefault (nbNews: Int = 25) -> NewsHeadModelUI {
        return NewsHeadModelUI(cityName: "Aix", nbNews: "\(nbNews) news", imageName: .Aix, backgroundColor: UIContext.Color.Global.aixBGColor)
    }
    static func chamberyDefault (nbNews: Int = 25) -> NewsHeadModelUI {
        return NewsHeadModelUI(cityName: "Chambéry", nbNews: "\(nbNews) news", imageName: .Chambery, backgroundColor: UIContext.Color.Global.chamberyBGColor)
    }
}
