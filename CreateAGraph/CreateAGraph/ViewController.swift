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
                self.graphView.temps = self.hourlyTempsOnly
                //passed information to the graphview
                //these are the coordinates for the y axis 
            }
        }
                
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

