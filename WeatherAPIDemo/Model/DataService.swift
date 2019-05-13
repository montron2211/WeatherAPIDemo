//
//  DataService.swift
//  WeatherAPIDemo
//
//  Created by Monmon on 5/13/19.
//  Copyright © 2019 Monmon. All rights reserved.
//

import Foundation

class DataService {
    
    static var api: DataService = DataService()
    
    func getWeatherFromAPI(completedHandle: @escaping(WeatherService) -> Void) {
        guard let url = URL(string: "https://api.apixu.com/v1/current.json?key=0eb9bea54855446380f132504192404&q=Paris") else { return }
        
        let urlRequest = URLRequest(url: url)
        
        let downloadTask = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            do {
                let weatherData = try JSONDecoder().decode(WeatherService.self, from: data!)
                DispatchQueue.main.async {
                    completedHandle(weatherData)
                }
            } catch {}
        })
        
        downloadTask.resume()
        
    }
}
