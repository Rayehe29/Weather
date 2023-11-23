//
//  MyLocation.swift
//  The weather App
//
//  Created by Rayehe Ashrafian on 17/11/23.
//

import SwiftUI

struct MyLocation: View {
    
    var hours  = Array(stride(from: 1, to: 24, by: 1))
    
    //    @State var imageName = ""
    
    var weather: Weather
    
    var body: some View {
        
        
        VStack {
            
            VStack(spacing: 3) {
                
                
                Text(weather.nameCity)
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .padding()
                
                
                
                
                Text("\(weather.correntTemperature)°")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .shadow(radius: 5)
                
                Text(weather.condition)
                    .font(.title3)
                    .fontWeight(.medium)
                
                
                Text("H:\(weather.temperature.highest)° L:\(weather.temperature.lowest)")
                    .font(.title3)
                    .fontWeight(.medium)
            }
            .padding(.bottom, -150)
            Spacer()
            
            //           Rectangle().fill(.gray)
            //                .opacity(0.8)
            //                .frame(width: 350, height: 150)
            //                .cornerRadius(25)
            //                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text("Clear conditions expected around 19:00.")
                    .padding()
                
                Divider()
                    .padding(.horizontal)
                
                ScrollView (.horizontal,showsIndicators: false){
                    
                    
                    HStack{
                        WeatherDay(dayOfWeek:"Now", imageName:"cloud.sun.fill", temperature: 20)
                        
                        ForEach(hours, id: \.self){ hour in
                            
                            
                            let imageName = (9...13).contains(hour)
                            ? iconWeathers.sunny.rawValue
                            : (6...10).contains(hour)||(14...17).contains(hour)   ?
                            iconWeathers.mostlysuuny.rawValue : iconWeathers.moon.rawValue
                            
                            let temperature =
                            (9...13).contains(hour) ?
                            19
                            :
                            (6...10).contains(hour)||(14...17).contains(hour) ?
                            13
                            :
                            (14...19).contains(hour) ?
                            16
                            :10
                            
                            
                            
                            
                            
                            
                            WeatherDay(dayOfWeek: String(hour), imageName: imageName, temperature: temperature)
                            
                        }
                        
                        
                    }
                }
                .contentMargins(16, for: .scrollContent)
                
                
            }
            .background(.ultraThinMaterial)
            .opacity(0.7)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
            
            Spacer()
            
        }
        
        
        
        .foregroundColor(.white)
        .padding()
        
        
        
        
        .background(Image("WeatherImage"))
    }
}

enum iconWeathers: String {
    case sunny = "sun.max.fill"
    case mostlysuuny = "cloud.sun.fill"
    case moon = "moon.stars"
}

struct WeatherDay: View {
    
    var dayOfWeek:String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size:16, weight: .medium))
            
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 22,height: 22)
                .padding()
            
            Text("\(temperature)°")
                .font(.system(size: 18,weight:.medium))
            
        }
    }
}

#Preview {
    MyLocation(weather: WeatherViewModel().weatherItem[0])
}




