//
//  ContentView.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    let paymentRequestData = PaymentRequestData()
    
    var body: some View {
        TabView {
            Home()
                .tabItem() {
                    Image(systemName: "house")
                          Text("Home")
            }
            History()
                .tabItem() {
                    Image(systemName: "clock")
                    Text("History")
            }
            PaymentRequest()
                .tabItem() {
                    Image(systemName: "plus.circle")
                    Text("New Payment")
            }
                .environmentObject(paymentRequestData)
            Notifications()
                .tabItem() {
                    Image(systemName: "bell.circle")
                    Text("Notifications")
            }
            Friends()
                .tabItem() {
                    Image(systemName: "person")
                    Text("Friends")
            }
        }
        .environmentObject(paymentRequestData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
