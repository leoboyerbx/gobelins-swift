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
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3 + 6
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = self.view.frame.width
        if indexPath.item == 0 {
            return CGSize(width: screenWidth, height: 300)
            
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
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "head", for: indexPath)
            cell.backgroundColor = .red
            return cell
        }
        if indexPath.item == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "weather", for: indexPath)
            cell.backgroundColor = .green
            return cell
        }
        if indexPath.item == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "text", for: indexPath)
            cell.backgroundColor = .orange
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "city", for: indexPath)
        cell.backgroundColor = .blue
        return cell
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as? UICollectionViewCell {
//            return cell
//        } else {
//            return UICollectionViewCell()
//        }
    }
}

