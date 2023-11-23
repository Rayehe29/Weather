//
//  ContentView.swift
//  WeatherApp
//
//  Created by Rayehe Ashrafian on 15/11/23.
//

//import SwiftUI
//
//struct WeatherApp: View {
//    
//    
//    var body: some View {
//        VStack {
//            var body: some View {
//                VStack {
//                    Text("Weather")
//                        .font(.title)
//                    
//                    
//                }
//                .padding()
//            }
//        }
//    
//        #Preview {
//            WeatherApp()
//        }
//
//    }
//}


import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack {
            Text("Weather")
                .font(.title)
                .bold()
                .padding()

            
        }
        .navigationTitle("Scenario")
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
