//
//  ContentView.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("go house e3! :D")
        // changed text from "live laugh love"
        //added a smiley face
                .bold()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
