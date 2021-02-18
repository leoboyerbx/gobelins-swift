//
//  APIContext.swift
//  MaPetiteRegion
//
//  Created by  on 18/02/2021.
//

import Foundation

class APIContext {
    struct OpenDataSoft {
        static func urlForCityInfos(cityName:String) -> String {
            return "https://public.opendatasoft.com/api/records/1.0/search/?dataset=evenements-publics-cibul&q=\(cityName)&lang=fr&facet=placename&facet=department&facet=region&facet=city&facet=date_start&facet=date_end&facet=pricing_info&facet=updated_at&facet=city_district"
        }
    }
    struct OpenWeather {
        static func urlForCityWeather(cityName: String) -> String {
            return "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=7e3ade8e01c0a1382a8a06b11a7a84ec&lang=fr"
        }
    }
}
