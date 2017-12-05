//
//  WeatherTestAppTests.swift
//  WeatherTestAppTests
//
//  Created by O on 03/12/2017.
//  Copyright © 2017 Karyna. All rights reserved.
//

import XCTest
@testable import WeatherTestApp

class WeatherTestAppTests: XCTestCase {
    private let defaultTimeout: TimeInterval = 15
    
    override func setUp() {
        super.setUp()
        
    }
    
    func testGetCurrentWeatherByCityName() {
     /*   let cityName = "Paris"
        
        let loadingExpectation = expectation(description: "Current weather was downloaded")
        
//        DataProvider.sharedProvider.triggerDataUpdate(entityType: .City) { [unowned self] in
            guard let sself = self else { return }
            
            if error == nil {
                if let currentWeather = currentWeather {
                    sself.validate(currentWeather: currentWeather)
                } else {
                    XCTAssertNotNil(currentWeather, "currentWeather must not be nil, when there is no error in response")
                }
            } else {
                XCTAssert(!error!.localizedDescription.isEmpty, "The error description must not be nil")
            }
            
            loadingExpectation.fulfill()
        }
        
        waitForExpectations(timeout: defaultTimeout)
 */
    }
    
    private func validate(currentWeather: CityWeather) {
        XCTAssertNotNil(currentWeather.cityId)
        XCTAssertNotNil(currentWeather.cityName)
        
        XCTAssertNotNil(currentWeather.temperature)
        XCTAssertNotNil(currentWeather.minTemperature)
        XCTAssertNotNil(currentWeather.maxTemperature)
        
        XCTAssertNotEqual(currentWeather.humidity, 0)
        XCTAssertNotEqual(currentWeather.pressure, 0)
    }
    
}
