//
//  ContentView.swift
//  WeatherApp
//
//  Created by Zaid Sayed on 11/07/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
        
        VStack {
            if let location = locationManager.location{
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            } else{
                if locationManager.isLoading {
                    LoadingView()
                } else{
                    WelcomeView().environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.561, saturation: 0.72, brightness: 0.932))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
