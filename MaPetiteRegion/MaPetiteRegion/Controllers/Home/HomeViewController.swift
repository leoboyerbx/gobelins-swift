//
//  ViewController.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIContext.Color.Home.headerBGColor
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3 + 6
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = self.view.frame.width
        if indexPath.item == 0 {
            return CGSize(width: screenWidth, height: 270)
            
        }
        if indexPath.item == 1 {
            return CGSize(width: screenWidth, height: 150)
            
        }
        if indexPath.item == 2 {
            return CGSize(width: screenWidth, height: 50)
            
        }
        let halfScreen = screenWidth/2.0
        let height = halfScreen * 0.8
        return CGSize(width:halfScreen, height: height )
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "head", for: indexPath) as? HeadCollectionViewCell {
                cell.setup(cityName: "Annecy")
                return cell
            }
        }
        if indexPath.item == 1 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "weather", for: indexPath) as? WeatherCollectionViewCell {
                cell.setup()
                return cell
            }
        }
        if indexPath.item == 2 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "text", for: indexPath) as? TextCollectionViewCell {
                cell.setup()
                return cell
            }
        }
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "city", for: indexPath) as? CityCollectionViewCell {
            cell.setup()
            return cell
        }
        return UICollectionViewCell()
    }
}

