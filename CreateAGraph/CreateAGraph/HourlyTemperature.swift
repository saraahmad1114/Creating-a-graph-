//
//  HourlyTemperature.swift
//  CreateAGraph
//
//  Created by Sara Ahmad on 3/9/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import Foundation

class HourlyTemperature{
    
    var time: Double?
    var temperature: Double?
    
    init(jsonDictionary: [String: Any]) {
        guard
            let time = jsonDictionary["time"] as? Double,
            let temperature = jsonDictionary["apparentTemperature"] as? Double
            else {print("did not unwrap contents of jsonDictionary"); return}
        
        self.time = time
        self.temperature = temperature
    }
}
