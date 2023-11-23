//
//  Model.swift
//  The weather App
//
//  Created by Rayehe Ashrafian on 16/11/23.
//

import Foundation
import SwiftUI

struct Weather:Identifiable {
    
    var id: UUID = UUID()
    
    var nameCity : String
    var correntTemperature : Int
    var timeCity : Date
    var condition : String
    var backgroundColor : Color = .blue
    var temperature :(highest: Int, lowest: Int )
}
