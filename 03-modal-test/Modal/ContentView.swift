//
//  ContentView.swift
//  Modal
//
//  Created by Thinkmill Pty Ltd on 13/10/19.
//  Copyright © 2019 Jordan Overbye. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show_modal: Bool = false

    var body: some View {
        Button(action: {
            self.show_modal = true
        }) {
            Text("Show Modal")
        }.sheet(isPresented: self.$show_modal) {
            ModalView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
