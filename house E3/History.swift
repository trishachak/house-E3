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
                        Image(systemName: "phone.fill")
                    }
                }
                .padding(20)
                
                Text("History")
                
                Spacer()
                
                Spacer()
                
            }
            
        }
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
