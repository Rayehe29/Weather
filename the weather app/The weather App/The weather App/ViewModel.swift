//
//  ViewModel.swift
//  The weather App
//
//  Created by Rayehe Ashrafian on 16/11/23.
//

import Foundation
import SwiftUI

class WeatherViewModel {
    var weatherItem : [Weather] = [
        Weather(nameCity: "My Location", correntTemperature: 17, timeCity: Date(), condition: "Severe Wind Warning & 2 More", backgroundColor: .blue,temperature: (highest: 17, lowest: 12)),
        Weather(nameCity: "Rome", correntTemperature: 17, timeCity: Date(), condition: "Severe Wind Warning & 1 More", backgroundColor: .blue,temperature: (highest: 17, lowest: 10)),
        Weather(nameCity: "Florence", correntTemperature: 12, timeCity: Date(), condition: "Severe Wind Warning", backgroundColor: .blue,temperature: (highest: 13, lowest: 11)),
        Weather(nameCity: "Milan", correntTemperature: 14, timeCity: Date(), condition: "Sunny", backgroundColor: .blue,temperature: (highest: 14, lowest: 4)),
        Weather(nameCity: "Naples", correntTemperature: 17, timeCity: Date(), condition: "Severe Wind Warning & More", backgroundColor: .blue,temperature: (highest: 17, lowest: 13)),
        Weather(nameCity: "Turin", correntTemperature: 16, timeCity: Date(), condition: "Sunny", backgroundColor: .blue,temperature: (highest: 16, lowest: 4))
        
    ]
    
    
}
