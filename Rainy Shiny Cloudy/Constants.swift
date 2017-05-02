//
//  Constants.swift
//  Rainy Shiny Cloudy
//
//  Created by Andreas Sterner on 2017-03-25.
//  Copyright © 2017 Andreas Sterner. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "781080640c88c2063c2e19187c8df284"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = ("\(BASE_URL)\(LATITUDE)59.33\(LONGITUDE)18.06\(APP_ID)\(API_KEY)")
