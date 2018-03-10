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
    var hourlyTempsOnly = [Double]()
    
    
    let store = HourlyTemperatureDatastore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.store.getWeatherHourlyTemperature { (hourlyData) in
            for singleHourlyTemp in self.store.hourlyTemperatureArray{
                self.hourlyTempsOnly.append(singleHourlyTemp.temperature!)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

