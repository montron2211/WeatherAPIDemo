//
//  Model.swift
//  WeatherAPIDemo
//
//  Created by Monmon on 5/13/19.
//  Copyright © 2019 Monmon. All rights reserved.
//

import Foundation

struct WeatherService: Codable {
    var location: Location
    
    private enum CodingKeys: String, CodingKey {
        case location
    }
}

struct Location: Codable {
    var name: String
    var country: String
    var localTime: String
    
    private enum CodingKeys: String, CodingKey {
        case name
        case country
        case localTime = "localtime"
    }
}


