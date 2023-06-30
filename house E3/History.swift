//
//  History.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/28/23.
//

import SwiftUI

struct History: View {
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
                        Text("History")
                            .font(.largeTitle)
                            .bold()
                            .padding(10)
                            .foregroundColor(Color("Rich Black"))
                        
                        Spacer()
                        
                        Spacer()
                        
                        List {
                            Text("Ashwini")
                            Text("Trisha")
                            Text("Neha")
                            Text("Deepika")
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

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
