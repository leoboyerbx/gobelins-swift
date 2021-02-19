//
//  CityManager.swift
//  MaPetiteRegion
//
//  Created by  on 18/02/2021.
//

import Foundation

class CityManager {
    static let instance = CityManager()
    enum ImageName:String {
        case Annecy = "annecy_img"
        case Annemasse = "annemasse_img"
        case Grenoble = "grenoble_img"
        case Lyon = "lyon_img"
        case Aix = "aix_img"
        case Chambery = "chambery_img"
    }
    enum BGImageName:String {
        case Annecy = "annecy_bg"
        case Annemasse = "annemasse_bg"
        case Grenoble = "grenoble_bg"
        case Lyon = "lyon_bg"
        case Aix = "aix_bg"
        case Chambery = "chambery_bg"
        
    }
    var cities: [CitySettingsModelUI] = [
        CitySettingsModelUI(cityName: "Grenoble",isEnabed: true, bgImage: .Grenoble),
        CitySettingsModelUI(cityName: "Annecy",isEnabed: true, bgImage: .Annecy),
        CitySettingsModelUI(cityName: "Lyon",isEnabed: true, bgImage: .Lyon),
        CitySettingsModelUI(cityName: "Chambéry",isEnabed: true, bgImage: .Chambery),
        CitySettingsModelUI(cityName: "Aix-les-bains",isEnabed: true, bgImage: .Aix),
        CitySettingsModelUI(cityName: "Annemasse",isEnabed: true, bgImage: .Annemasse),
    ]
    
    var enabledCities: [CitySettingsModelUI] = []
    
    var currentCity = "annecy"
    var currentCityBeautifiedName = "Annecy"
    
    func filterCities() {
        enabledCities = cities.filter { $0.isEnabed == true }
    }
}
