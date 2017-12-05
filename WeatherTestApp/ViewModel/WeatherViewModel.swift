//
//  WeatherViewModel.swift
//  WeatherTestApp
//
//  Created by O on 03/12/2017.
//  Copyright © 2017 Karyna. All rights reserved.
//

import UIKit
import CoreData

class WeatherViewModel: NSObject {
    
    var cities: [CityWeather]?
    
    override init() {
        super.init()
    }
    
    func getCities(completion: @escaping () -> Void) {
        
        DataProvider.sharedProvider.triggerDataUpdate(entityType: .City) { [unowned self] in
            self.cities = CityWeather.models
            completion()
        }
        
    }
    
    func numberOfCitiesToDisplay(in section: Int) -> Int {
        return cities?.count ?? 0
    }
    
    func cityToDisplay(for indexPath: IndexPath) -> CityWeather? {
        return cities?[indexPath.row]
    }
}
