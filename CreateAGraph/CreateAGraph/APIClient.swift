//
//  APIClient.swift
//  CreateAGraph
//
//  Created by Sara Ahmad on 3/9/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import Foundation

class APIClient{
    
    class func getJSONInformation (completion: @escaping([String: Any])-> ()){
        
        var dictionary = [String: Any]()
        
        let url = "https://api.darksky.net/forecast/\(Secrets.apiKey)/40.7380,-73.8801"
        
        let convertedUrl = URL(string: url)
        
        guard let unwrappedConvertedUrl = convertedUrl else{print("uwnrappedConvertedUrl did not unwrap"); return}
        
        let request = URLRequest(url: unwrappedConvertedUrl)
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let unwrappedData = data else{print("unwrappedData did not unwrap"); return}
            
            let jsonDictionary = try? JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String: Any]
            
            guard let unwrappedJsonDictionary = jsonDictionary else{print("unwrappedJsonDictionary did not unwrap"); return}
            
            dictionary = unwrappedJsonDictionary
            
            completion(dictionary)
        }
        task.resume()
    }
}
