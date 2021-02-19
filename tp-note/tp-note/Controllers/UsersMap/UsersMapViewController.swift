//
//  UsersMapViewController.swift
//  tp-note
//
//  Created by  on 19/02/2021.
//

import UIKit
import MapKit

class UsersMapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var selectedUserId: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mapView.delegate = self
        
        NetworkManager.instance.getUsers { (users) in
            for user in users {
                if let lat = Double(user.address?.geo?.lat ?? ""),
                   let lng = Double(user.address?.geo?.lng ?? "") {
                    let coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lng)
                    self.mapView.addAnnotation(
                        UserLocation(id: user.id ?? 0,
                                     title: user.name ?? "",
                                     info: user.username ?? "",
                                     coordinate: coordinate)
                    )
                }
            }
        }
    }
    
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let user = view.annotation as? UserLocation {
            view.isSelected = false
            self.selectedUserId = user.id
            self.performSegue(withIdentifier: "toAlbumsListFromMap", sender: self)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAlbumsListFromMap" {
            if let destVC = segue.destination as? AlbumsListViewController,
               let senderController = sender as? UsersMapViewController,
               let id = senderController.selectedUserId {
                destVC.userId = id
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
