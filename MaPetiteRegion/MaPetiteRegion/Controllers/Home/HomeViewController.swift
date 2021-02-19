//
//  ViewController.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var temperature: String = ""
    var weather: String = ""
    var weatherDescription: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
//        collectionView.backgroundColor = UIContext.Color.Home.headerBGColor
        updateWeather()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3 + CityManager.instance.enabledCities.count
    }
    
    func updateWeather() {
        NetworkManager.instance.getWeather(for: CityManager.instance.currentCity) { (weatherData) in
            if let temp = weatherData.main?.temp {
                self.temperature = String(temp)
            }
            if let w = weatherData.weather?[0].main {
                self.weather = w
            }
            if let wd = weatherData.weather?[0].weatherDescription {
                self.weatherDescription = String(wd)
            }
            self.collectionView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        CityManager.instance.filterCities()
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = self.view.frame.width
        if indexPath.item == 0 {
            return CGSize(width: screenWidth, height: 265)
            
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
                cell.setup(cityName: CityManager.instance.currentCity)
                return cell
            }
        }
        if indexPath.item == 1 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "weather", for: indexPath) as? WeatherCollectionViewCell {
                cell.setup(temperature: temperature, weather: weather, weatherDesc: weatherDescription)
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
            cell.setup(model: CityManager.instance.enabledCities[indexPath.row - 3])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item >= 3 {
            print("select")
            let index = indexPath.item - 3
            CityManager.instance.currentCity = CityManager.instance.enabledCities[index].cityName
            updateWeather() // will reload table
        }
    }
}

