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
            VStack {
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: Settings()) {
                        Image(systemName: "gearshape")
                    }
                }
                .padding(20)
                
                Text("History")
                
                Spacer()
                List {
                    Text("Ashwini")
                    Text("Trisha")
                    Text("Neha")
                    Text("Deepika")
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
