import Foundation

// MARK: - PhotoElement
struct PhotoElement: Codable {
    let albumID, id: Int
    let title: String
    let url, thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case id, title, url
        case thumbnailURL = "thumbnailUrl"
    }
}

typealias Photos = [PhotoElement]
