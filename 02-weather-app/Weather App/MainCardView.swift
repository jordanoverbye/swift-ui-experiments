//
//  MainCardView.swift
//  Weather App
//
//  Created by Thinkmill Pty Ltd on 10/10/19.
//  Copyright © 2019 Jordan Overbye. All rights reserved.
//

import SwiftUI

struct MainCardView: View {
    @Binding var weather: Weather
       
       var body: some View{
           ZStack {
               VStack(spacing: 20){
                   Text("\(weather.currentTemp)°")
                       .fontWeight(Font.Weight.heavy)
                       .font(Font.system(size: 70))
                   
                   Image(systemName: weather.weatherIcon)
                   .resizable()
                   .frame(width: 100, height: 100)
                   .aspectRatio(contentMode: .fit)
            
                   Text("\(weather.maxTemp)°")
                       .font(.title)
                       .padding(.vertical)
               }
           }
           .frame(minWidth: 0 , maxWidth: .infinity)
           .padding(20)
           .background(Color("Primary"))
       }
}

struct MainCardView_Previews: PreviewProvider {
    static var previews: some View {
        MainCardView(weather: .constant(Weather.sampleData[0]))
    }
}
