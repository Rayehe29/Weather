//
//  WeatherInfoRowView.swift
//  The weather App
//
//  Created by Rayehe Ashrafian on 16/11/23.
//

import SwiftUI

struct WeatherInfoRowView: View {
   
    
    let weather : Weather
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill( LinearGradient(colors: [.mint, .blue], startPoint: .topTrailing, endPoint: .bottomTrailing))
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(weather.nameCity)
                            .font(.system(size:22))
                            .bold()
                            .shadow(radius: 5)

                        Text("12:56")
                            .font(.system(size:15))
                            .bold()
                        
                        Spacer()
                        

                        Text(weather.condition)
                            .font(.system(size:14))
                            .bold()
                    }
                    .padding()
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("\(weather.correntTemperature)°")
                            .font(.largeTitle)
                           
                            .shadow(radius: 5)
                      
                        
                        Spacer()
                        
                        
                        Text("H:\(weather.temperature.highest)°  L:\(weather.temperature.lowest)°")
                            .font(.system(size:14))
                            .bold()
                            
                  
                        
                        
                    }
                    .padding()
                     
                    
                    
                }
                
            }
            
            
            
    
            
        }
    }
}

#Preview {
    
    WeatherInfoRowView(weather: Weather(nameCity: "Roma", correntTemperature: 19, timeCity: Date(), condition:"Mostly Sunny",temperature: (highest: 21, lowest: 13)))
}
