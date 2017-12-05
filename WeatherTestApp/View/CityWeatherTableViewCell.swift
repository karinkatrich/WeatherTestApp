//
//  CityWeatherTableViewCell.swift
//  WeatherTestApp
//
//  Created by O on 03/12/2017.
//  Copyright © 2017 Karyna. All rights reserved.
//

import UIKit

class CityWeatherTableViewCell: UITableViewCell {
    
    @IBOutlet var cityName: UILabel!
    @IBOutlet var cityTemperature: UILabel!
    @objc var model: CityWeather?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addObserver(self, forKeyPath: #keyPath(model.temperature), options: [.old, .new], context: nil)
        Animations.animateLabel(self.cityTemperature)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == #keyPath(model.temperature) {
            self.cityTemperature.text = String(describing: model?.temperature)
            Animations.animateLabelSeries([self.cityTemperature])
        }
    }
    
}
