//
//  Location.swift
//  Rainy Shiny Cloudy
//
//  Created by Andreas Sterner on 2017-05-03.
//  Copyright © 2017 Andreas Sterner. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
