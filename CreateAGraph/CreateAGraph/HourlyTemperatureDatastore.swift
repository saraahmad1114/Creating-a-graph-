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
      
        APIClient.getJSONInformation { (weatherDictionary) in
            
            guard let unwrappedWeatherDictionary = weatherDictionary as? [String: Any] else{print("unwrappedWeatherDictionary did not unwrap"); return}
            
            guard let hourlyJson = unwrappedWeatherDictionary["hourly"] as? [String: Any] else{print("did not unwrap hourlyJson"); return}
            
            guard let dataArray = hourlyJson["data"] as? Array<Any> else{print("dataArray did not unwrap"); return}
            
            for singleDictionary in dataArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String: Any] else {print("unwrappedSingleDictionary did not unwrap"); return}
                
                let hourlyObject = HourlyTemperature.init(jsonDictionary: unwrappedSingleDictionary)
                
                self.hourlyTemperatureArray.append(hourlyObject)
            }
            
            completion(self.hourlyTemperatureArray)
        }
    }
}
