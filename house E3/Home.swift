//
//  Home.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/28/23.
//

import SwiftUI

struct Home: View {
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
                    
                    Text("Home")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("Rich Black"))
                    
                    VStack(alignment: .leading) {
                        Text("Your Requests")
                            .bold()
                        
                        let eventNames = printEventName(requestList: paymentRequestData.requestArray)
                        List(eventNames, id: \.self) {
                            payMeFor in
                            Text(payMeFor)
                        }
                        .cornerRadius(15)
                    }
                    .padding(30)
                    

                    
                    Spacer()
                    
                    Spacer()
                    
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environmentObject(PaymentRequestData())
    }
}

func printEventName(requestList: [PaymentRequestInfo]) -> [String] {
    var payMeList = [String]()
    
    for event in requestList {
        payMeList.append(event.getName())
    }
    return payMeList
}
