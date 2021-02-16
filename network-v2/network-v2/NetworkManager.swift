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
        AF.request(url).response { response in
            if let data = response.data {
                if let str = String(bytes: data, encoding: .utf8) {
                    callback(str)
                } else {
                    callback("An error occured")
                }
            }
        }
    }
    
    
    
    func getPhotos(callback: @escaping (Photos) -> ()) {
        get(url: "https://jsonplaceholder.typicode.com/photos") { (data) in
            let decoder = JSONDecoder()

            do {
                let decoded = try decoder.decode(Photos.self, from: Data(data.utf8))
                callback(decoded)
            } catch {
                print("Failed to decode JSON")
            }
        }
    }
}
