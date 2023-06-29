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
            VStack {
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: Settings()) {
                        Image(systemName: "gearshape")
                    }
                }
                .padding(20)
                
                Text("Notifications")
                
                Spacer()
                List {
                    Text("Alyssa")
                    Text("Tamika")
                    Text("Carolyn")
                    Text("Madison")
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
