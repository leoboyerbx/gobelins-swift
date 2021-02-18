//
//  NetworkManager.swift
//  network-v2
//
//  Created by  on 16/02/2021.
//

import Foundation
import Alamofire

class NetworkManager {
    static let instance = NetworkManager()
    
    func get(url: String, callback: @escaping (String) -> ()) {
        AF.request(url).responseJSON { response in
            if let data = response.data {
                if let str = String(bytes: data, encoding: .utf8) {
                    callback(str)
                } else {
                    callback("An error occured")
                }
            }
        }
    }
    
    func getInfos(for cityName: String, callback: @escaping (Infos) -> ()) {
        get(url: APIContext.OpenDataSoft.urlForCityInfos(cityName: cityName)) { (data) in
            let decoder = JSONDecoder()

            do {
                let decoded = try decoder.decode(Infos.self, from: Data(data.utf8))
                callback(decoded)
            } catch {
                print("Failed to decode JSON")
            }
        }
    }
    
    func getWeather(for cityName: String, callback: @escaping (WeatherInfo) -> ()) {
        get(url: APIContext.OpenWeather.urlForCityWeather(cityName: cityName)) { (data) in
            let decoder = JSONDecoder()

            do {
                let decoded = try decoder.decode(WeatherInfo.self, from: Data(data.utf8))
                callback(decoded)
            } catch {
                print("Failed to decode JSON")
            }
        }
    }
}
