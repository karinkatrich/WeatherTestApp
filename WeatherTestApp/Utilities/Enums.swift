//
//  Enums.swift
//  WeatherTestApp
//
//  Created by O on 03/12/2017.
//  Copyright © 2017 Karyna. All rights reserved.
//

import Foundation

public enum Entities {
    
    case City
    
}

public enum APIProviders {
    
    case OpenWeatherMap
    
    var rawValue: String {
        switch self {
        case .OpenWeatherMap: return "http://api.openweathermap.org/data/2.5/group?id="
        }
    }
}

public enum APIKeys {
    
    case OpenWeatherMap
    
    var rawValue: String {
        switch self {
        case .OpenWeatherMap: return "336e24e394222243ac1f69508eb0a3c1"
        }
    }
}
