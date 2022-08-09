//
//  ViewController.swift
//  WeatherApiApp
//
//  Created by Илья Сесюнин on 09.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var weatherIconImageView: UIImageView!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    let networkweatherManager = NetworkWeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkweatherManager.fetchCurrentWeather(forCity: "London")
    }
    
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert) { city in
            self.networkweatherManager.fetchCurrentWeather(forCity: city)
        }
    }
    
}

