//
//  APIContext.swift
//  MaPetiteRegion
//
//  Created by  on 18/02/2021.
//

import Foundation

class APIContext {
    struct JsonPlaceholder {
        static func urlForUsers() -> String {
            return "https://jsonplaceholder.typicode.com/users"
        }
        static func urlForAlbums(from userId: Int) -> String {
            return "https://jsonplaceholder.typicode.com/albums?userId=\(userId)"
        }
        static func urlForPhotos(of albumId: Int) -> String {
            return "https://jsonplaceholder.typicode.com/photos?albumId=\(albumId)"
        }
    }
}
