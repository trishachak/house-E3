//
//  PaymentRequest.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/28/23.
//

import SwiftUI

struct PaymentRequest: View {
    @State var eventName = ""
    @State var totalPaid = ""
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
                
                Text("Payment Request")
                
                Spacer()
                
                VStack(spacing: 50) {
                    TextField("Enter event name", text: $eventName)
                        .multilineTextAlignment(.leading)
                    
                    //friend list goes here
                    
                    HStack {
                        //total amount
                        VStack {
                            Text("Total Paid")
                            TextField("$$", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                        }
                        //per person
                        VStack {
                            Text("Per Person")
                            TextField("$$", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                        }
                    }
                    
                    TextField("Preferred Method of Payment", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                    
                    
                    
                    
                }
                .padding(50)
                
                Spacer()
                
                Spacer()
                
            }
            
        }
    }
}

struct PaymentRequest_Previews: PreviewProvider {
    static var previews: some View {
        PaymentRequest()
    }
}
