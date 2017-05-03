//
//  Constants.swift
//  Rainy Shiny Cloudy
//
//  Created by Andreas Sterner on 2017-03-25.
//  Copyright © 2017 Andreas Sterner. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/"
let CURRENT_WEATHER_BASE_URL = "weather?"
let FORECAST_WEATHER_BASE_URL = "forecast/daily?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "781080640c88c2063c2e19187c8df284"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=781080640c88c2063c2e19187c8df284"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=781080640c88c2063c2e19187c8df284"
