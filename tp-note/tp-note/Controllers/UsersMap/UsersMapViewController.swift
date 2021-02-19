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
        
        let user1 = UserLocation(id: 1, title: "toto", info: "Totitoti", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5))
        
        mapView.addAnnotation(user1)
    }
    
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let user = view.annotation as? UserLocation {
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
