import MapKit
import UIKit

class UserLocation: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    var id: Int

    init(id: Int, title: String, info: String, coordinate: CLLocationCoordinate2D) {
        self.id = id
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
