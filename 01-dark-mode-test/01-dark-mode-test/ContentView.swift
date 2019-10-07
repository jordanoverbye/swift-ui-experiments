//
//  ContentView.swift
//  01-dark-mode-test
//
//  Created by Thinkmill Pty Ltd on 7/10/19.
//  Copyright © 2019 Thinkmill Pty Ltd. All rights reserved.
//

import SwiftUI

extension UIViewController {
    var isDarkModeEnabled : Bool {
        get {
            return traitCollection.userInterfaceStyle == .dark
        }
    }
}


struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        Text(colorScheme == .light ? "Light Mode" : "Dark Mode").font(.largeTitle).fontWeight(.black)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
   static var previews: some View {
      Group {
         ContentView()
            .environment(\.colorScheme, .light)

         ContentView()
            .environment(\.colorScheme, .dark)
      }
   }
}
#endif
