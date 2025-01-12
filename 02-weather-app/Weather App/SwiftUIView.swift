//
//  SwiftUIView.swift
//  Weather App
//
//  Created by Thinkmill Pty Ltd on 10/10/19.
//  Copyright © 2019 Jordan Overbye. All rights reserved.
//

import SwiftUI

struct SmallCard: View {
    var weather: Weather = Weather(id: 1, day: "Monday", weatherIcon:  "sun.max", currentTemp:  "40", minTemp: "25", maxTemp: "69", color: "mainCard")
       
       var body: some View{
           
           VStack(spacing: 20) {
               // Day text
            Text(self.weather.day).fontWeight(.bold).foregroundColor(color: "Secondary")

               
               // Weather icon
               Image(systemName: self.weather.weatherIcon)
                   .resizable()
                   .foregroundColor(Color.white)
                   .frame(width: 60, height: 60)
               
               
               // Temp texts
               ZStack {
                   Image("cloud")
                       .resizable()
                       .scaledToFill()
                       .offset(CGSize(width: 0, height: 30))
                   
                   VStack(spacing: 8) {
                       Text("\(self.weather.currentTemp)°").font(.title).fontWeight(.bold)
                       HStack {
                           Text("\(self.weather.minTemp)°")
                           Text("\(self.weather.maxTemp)°")
                       }
                   }
               }
           }
           .frame(width: 200, height: 300)
           .background(Color("Primary"))
           .cornerRadius(30)
           .shadow(color: Color(weather.color).opacity(0.7), radius: 10, x: 0, y: 8)
       }
}

struct SmallCard_Previews: PreviewProvider {
    static var previews: some View {
        SmallCard( )
    }
}
