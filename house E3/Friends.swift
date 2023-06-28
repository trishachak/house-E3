//
//  Friends.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/28/23.
//

import SwiftUI

struct Friends: View {
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
                
                Text("Friends")
                
                Spacer()
                
                Spacer()
                
            }
            
        }
    }
}

struct Friends_Previews: PreviewProvider {
    static var previews: some View {
        Friends()
    }
}
