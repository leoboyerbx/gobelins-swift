//
//  NetworkManager.swift
//  network-v1
//
//  Created by  on 16/02/2021.
//

import Foundation
import Alamofire

class NetworkManager {
    static let instance: NetworkManager = NetworkManager()
    
    func get(url: String, callback: @escaping(String) -> ()) {
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
}
