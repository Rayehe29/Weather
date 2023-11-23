//
//  ContentView.swift
//  The weather App
//
//  Created by Rayehe Ashrafian on 15/11/23.
//

import SwiftUI


struct ContentView: View {
    var viewModel = WeatherViewModel().weatherItem
    @State private var searchbar: String = ""
    
    
    
    var filteredWeather: [Weather] {
        if searchbar.isEmpty {
            return viewModel
        } else {
            return viewModel.filter { $0.nameCity.contains(searchbar) }
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .leading) {
                LinearGradient(colors: [.black, .gray], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    ForEach(filteredWeather) { item in
                        NavigationLink(destination: MyLocation(weather: item)) {
                            WeatherInfoRowView(weather: item)
                        }
                        //                        .accentColor(.white)
                    }
                    .padding()
                }
                .navigationBarTitle("Weather")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Menu {
                            Button(action: {
                                // Handle Edit Lists action
                            }) {
                                Label("Edit Lists", systemImage: "pencil")
                            }
                            
                            Button(action: {
                                // Handle Templates action
                            }) {
                                Label("Notifications", systemImage: "bell.badge")
                            }
                            Button(action: {
                                // Handle Edit Lists action
                            }) {
                                Label("Celsius", systemImage: "thermometer.sun")
                            }
                            Button(action: {
                                // Handle Edit Lists action
                            }) {
                                Label("Farenheit", systemImage: "drop.degreesign")
                            }
                            Button(action: {
                                // Handle Edit Lists action
                            }) {
                                Label("Units", systemImage: "chart.bar")
                            }
                            Button(action: {
                                // Handle Edit Lists action
                            }) {
                                Label("Report an issue", systemImage: "exclamationmark.bubble")
                            }
                        } label: {
                            Image(systemName: "ellipsis.circle")
                                .resizable()
                                .frame(width: 22, height: 22)
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            .searchable(text: $searchbar, prompt: "Search for a city or airport")
        }
    }
}




#Preview {
    ContentView()
}
