//
//  ViewController.swift
//  collection-view
//
//  Created by  on 16/02/2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as? NumberCell {
            cell.numberLabel.text = "\(indexPath.row)"
            cell.backgroundColor = UIColor(red: 1, green: 0.86, blue: 0, alpha: 1)
            
            cell.sliderChangeAction = { value in
                cell.backgroundColor = UIColor(red: 1, green: 0.86, blue: 0, alpha: CGFloat(value))
            }
            
            return cell
        } else {
            return NumberCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 100)
    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }


}

