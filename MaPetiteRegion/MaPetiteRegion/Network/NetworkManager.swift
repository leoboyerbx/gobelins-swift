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
    
    func getInfos(for city: String, callback: @escaping (Infos) -> ()) {
        get(url: "https://public.opendatasoft.com/api/records/1.0/search/?dataset=evenements-publics-cibul&q=\(city)&lang=fr&facet=placename&facet=department&facet=region&facet=city&facet=date_start&facet=date_end&facet=pricing_info&facet=updated_at&facet=city_district") { (data) in
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
        get(url: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=7e3ade8e01c0a1382a8a06b11a7a84ec&lang=fr") { (data) in
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
