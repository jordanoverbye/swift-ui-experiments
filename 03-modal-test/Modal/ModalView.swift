//
//  ModalView.swift
//  Modal
//
//  Created by Thinkmill Pty Ltd on 13/10/19.
//  Copyright © 2019 Jordan Overbye. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    // 1. Add the environment variable
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        // 2. Embed Text in a VStack
        VStack {
            // 3. Add a button with the following action
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Dismiss")
            }.padding(.bottom, 50)
            Text("This is a modal")
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
