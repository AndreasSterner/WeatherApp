//
//  CurrentWeather.swift
//  Rainy Shiny Cloudy
//
//  Created by Andreas Sterner on 2017-03-25.
//  Copyright © 2017 Andreas Sterner. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: String!
    
 //   }

var cityName: String {
    if _cityName == nil {
        _cityName = ""
    }
    return _cityName
}

var date: String {
    if _date == nil {
        _date = ""
    }
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .long
    dateFormatter.timeStyle = .none
    
    let currentDate = dateFormatter.string(from: Date())
    self._date = "Today, \(currentDate)"
    
    return _date
}

var weatherType: String {
    if _weatherType == nil {
        _weatherType = ""
    }
    return _weatherType
}

var currentTemp: String {
    if _currentTemp == nil {
        _currentTemp = ""
    }
    return _currentTemp
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //Alamofire download
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        Alamofire.request(currentWeatherURL).responseJSON { response in
            let result = response.result
//            print(response)
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    
                    if let currentTemperature = main["temp"] as? Double {
                        
//                        let kelvinToCelcius = "\(currentTemperature - 273.15)"
                        
//                        if kelvinToCelcius.characters.count > 5 {
//                        
//                        let endIndex = kelvinToCelcius.index(kelvinToCelcius.endIndex, offsetBy: kelvinToCelcius.characters.count + 5)
//                        var truncated = kelvinToCelcius.substring(to: endIndex)
//
//                        } else {
//                            var truncated = kelvinToCelcius
//
//                        }
//                        
//                        self._currentTemp = "\(truncated) °C"
                        
                        let kelvinToFarenheitPreDivision = (currentTemperature * (9/5) - 459.67)
                        
                        let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                        
                        self._currentTemp = "\(kelvinToFarenheit) °F"
                        print(self._currentTemp)
                    }
                }
                completed()
            } 
        }
    
        
        
    }
    
    
    
}








































