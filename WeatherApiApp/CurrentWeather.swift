//
//  CurrentWeather.swift
//  WeatherApiApp
//
//  Created by Илья Сесюнин on 09.08.2022.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        "\(temperature.rounded())"
    }
    
    let conditionCode: Int
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        conditionCode = currentWeatherData.weather.first!.id
    }
}
