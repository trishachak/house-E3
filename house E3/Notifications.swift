//
//  Notifications.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/28/23.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Baby Powder")
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Spacer()
                        
                        NavigationLink(destination: Settings()) {
                            Image(systemName: "gearshape")
                        }
                    }
                    .padding(20)
                    
                    VStack {
                        Text("Notifications")
                            .font(.largeTitle)
                            .bold()
                            .padding(10)
                            .foregroundColor(Color("Rich Black"))
                        
                        Spacer()
                        
                        Spacer()
                        
                        List {
                            Text("🔔 Alyssa")
                            Text("🔔 Tamika")
                            Text("🔔 Madison")
                            Text("🔔 Carolyn")
                        }
                        .cornerRadius(15)
                        .padding(20)
                    }
                    .padding(10)
                    
                    
                }
            }
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
