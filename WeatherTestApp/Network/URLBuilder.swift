//
//  URLBuilder.swift
//  WeatherTestApp
//
//  Created by O on 03/12/2017.
//  Copyright © 2017 Karyna. All rights reserved.
//

import UIKit

class URLBuilder: NSObject {
    
    func getURL(entity: Entities) -> String {
        switch entity {
        case .City:
            return getUrlForRegisterdCities()
        }
    }
    
    func getUrlForRegisterdCities() -> String {
        var urlString: String = APIProviders.OpenWeatherMap.rawValue
        let values = Array(AppDelegate.registeredCities.values)
        urlString += values.joined(separator: ",")
        urlString += "&units=metric"
        urlString += "&APPID=\(APIKeys.OpenWeatherMap.rawValue)"
        return urlString
    }
}
