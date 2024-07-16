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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            WelcomeView().environmentObject(locationManager)
        }
        .background(Color(hue: 0.563, saturation: 0.865, brightness: 0.93))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

#Preview {
    ContentView()
}
