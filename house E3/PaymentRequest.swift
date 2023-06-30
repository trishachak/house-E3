//  PaymentRequest.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/28/23.
//

import SwiftUI

struct PaymentRequest: View {
    //textfield info to construct a PaymentRequestInfo object
    @State var event = ""
    @State var totalPaid = ""
    @State var payment = ""
    @State var daysString = ""
    @State var friendsArray = [FriendInfo]()
    @State var friendsArrayEntry = ""
    
    @State var perPerson = ""
    
    @EnvironmentObject var paymentRequestData: PaymentRequestData
    
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
                    
                    Text("Payment Request")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("Rich Black"))
                    
                    Spacer()
                    
                    VStack(spacing: 50) {
                        TextField("Enter Event Name", text: $event)
                            .multilineTextAlignment(.leading)
                        
                        HStack() {
                            TextField("Enter Friend Name", text: $friendsArrayEntry)
                            
                            Button("add") {
                                let bff = FriendInfo(name: friendsArrayEntry)
                                friendsArray.append(bff)
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(Color("Indigo Dye"))
                        
                        }
                        
                        VStack {
                            //total amount
                                Text("Total Paid:")
                                TextField("$$", text: $totalPaid)
                                    .multilineTextAlignment(.center)
                           
                            //per person
                                Text("Per Person:")
                                .padding(3)
                            Text("$" + divideMoney(total: Double(totalPaid) ?? 0, numPeople: Double(friendsArray.count)))
                        }
                        .padding(5)
                        
                        TextField("Preferred Method of Payment", text: $payment)
                            .multilineTextAlignment(.leading)
                        
                        TextField("Days to Reimburse", text: $daysString)
                        
                        
                        Button("Create Payment Request") {
                            let newRequestInfo = PaymentRequestInfo(name: event, totalMoney: Double(totalPaid) ?? 0, paymentMethod: payment, daysToPay: Int(daysString) ?? 0, friends: friendsArray)
                            
                            paymentRequestData.newRequest = newRequestInfo
                            paymentRequestData.requestArray.append(newRequestInfo)
                        }
                        .buttonStyle(.borderedProminent)
                        .bold()
                        .tint(Color("Indigo Dye"))
                        
                        
                    }
                    .padding(50)
                    
                    
                    
                    Spacer()
                    
                    Spacer()
                    
                }
            }
            
        }
    }
}

struct PaymentRequest_Previews: PreviewProvider {
    static var previews: some View {
        PaymentRequest()
    }
}


func divideMoney(total: Double, numPeople: Double) -> String {
    return String(total/numPeople)
}


