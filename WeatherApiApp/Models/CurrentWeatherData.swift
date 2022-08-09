//
//  CurrentWeatherData.swift
//  WeatherApiApp
//
//  Created by Илья Сесюнин on 09.08.2022.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
