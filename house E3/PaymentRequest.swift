//  PaymentRequest.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/28/23.
//

import SwiftUI

struct PaymentRequest: View {
    @State var event = ""
    @State var totalPaid = ""
    @State var payment = ""
    @State var daysString = ""
    @State var requestArray = [PaymentRequestInfo]()
    
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
                    TextField("Enter event name", text: $event)
                        .multilineTextAlignment(.leading)
                    
                    //friend list goes here
                    
                    HStack {
                        //total amount
                        VStack {
                            Text("Total Paid")
                            TextField("$$", text: $totalPaid)
                                .multilineTextAlignment(.center)
                        }
                        //per person
                        VStack {
                            Text("Per Person")
                            TextField("$$", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.center)
                        }
                    }
                    
                    TextField("Preferred Method of Payment", text: $payment)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Days to reimburse", text: $daysString)
                    
                    
                    Button("create payment request") {
                        requestArray.append(PaymentRequestInfo(name: event, totalMoney: Double(totalPaid) ?? 0, paymentMethod: payment, daysToPay: Int(daysString) ?? 0))
                    }
                    
                    
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
