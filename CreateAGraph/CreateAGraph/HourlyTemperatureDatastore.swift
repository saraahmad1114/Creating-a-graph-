//
//  HourlyTemperatureDatastore.swift
//  CreateAGraph
//
//  Created by Sara Ahmad on 3/9/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import Foundation

class HourlyTemperatureDatastore{
   
    static let sharedInstance = HourlyTemperatureDatastore()
    private init() {}
    
    var hourlyTemperatureArray = [HourlyTemperature]()
    
    func getWeatherHourlyTemperature (completion:@escaping ([HourlyTemperature]) -> ()){
      
        
    }
 
}
