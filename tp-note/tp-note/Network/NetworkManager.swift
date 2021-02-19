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
    
    func getUsers(callback: @escaping (Users) -> ()) {
        get(url: APIContext.JsonPlaceholder.urlForUsers()) { (data) in
            let decoder = JSONDecoder()

            do {
                let decoded = try decoder.decode(Users.self, from: Data(data.utf8))
                callback(decoded)
            } catch {
                print("Failed to decode JSON")
            }
        }
    }
    
    func getAlbums(from userId: Int, callback: @escaping (Albums) -> ()) {
        get(url: APIContext.JsonPlaceholder.urlForAlbums(from: userId)) { (data) in
            let decoder = JSONDecoder()

            do {
                let decoded = try decoder.decode(Albums.self, from: Data(data.utf8))
                callback(decoded)
            } catch {
                print("Failed to decode JSON")
            }
        }
    }
    
    func getPhotos(of albumId: Int, callback: @escaping (Photos) -> ()) {
        get(url: APIContext.JsonPlaceholder.urlForPhotos(of: albumId)) { (data) in
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
