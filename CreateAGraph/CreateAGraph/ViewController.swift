//
//  ViewController.swift
//  CreateAGraph
//
//  Created by Sara Ahmad on 3/9/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var graphView: GraphView!
    var hourlyTempsOnly = [Int]()
    var timeHourTemp = [String]()
    
    let store = HourlyTemperatureDatastore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.store.getWeatherHourlyTemperature { (hourlyData) in
            for singleHourlyTemp in self.store.hourlyTemperatureArray{
                if let unwrappedTime = singleHourlyTemp.temperature{
                self.hourlyTempsOnly.append(Int(unwrappedTime))
                self.graphView.temps = self.hourlyTempsOnly
                }
                if let hourlyTime = singleHourlyTemp.time{
                self.timeHourTemp.append(self.convertTimeStampToHoursOnly(timeStamp: hourlyTime))
                self.graphView.hours = self.timeHourTemp
                }
            }
        }
                
    }
    
    //converted so that I get the hours and the AM or PM of the time- EVERYTHING WORKS HERE! 
    func convertTimeStampToHoursOnly (timeStamp: Double) -> String{
        let date = NSDate(timeIntervalSince1970: timeStamp)
        let dayTimePeriodFormatter = DateFormatter()
        dayTimePeriodFormatter.dateFormat = "hh a"
        let dateString = dayTimePeriodFormatter.string(from: date as Date)
        return dateString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

