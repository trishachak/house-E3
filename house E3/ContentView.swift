//
//  ContentView.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("Home")
            }
            History()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("History")
            }
            PaymentRequest()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("New Payment")
            }
            Notifications()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("Notifications")
            }
            Friends()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("Friends")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
