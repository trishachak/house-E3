//
//  Settings.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/28/23.
//

import SwiftUI

struct Settings: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var pronouns = ""
    @State var age = ""
    @State var username = ""
    @State var currency = ""
    
    var body: some View {
        ZStack {
            Color("Baby Powder")
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 10) {
                
                Text("Settings")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("Rich Black"))

                
                
                Image("KWK logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 200, height: 200)
                    .padding(35)
            
                HStack {
                    VStack(alignment: .leading) {
                        TextField("First Name", text: $firstName)
                            .multilineTextAlignment(.center)
                            .padding(7)
                        
                        TextField("Last Name", text: $lastName)
                            .multilineTextAlignment(.center)
                            .padding(7)
                    }
                    VStack(alignment: .leading) {
                        TextField("Pronouns", text: $pronouns)
                            .multilineTextAlignment(.center)
                            .padding(7)
                        
                        TextField("Age", text: $age)
                            .multilineTextAlignment(.center)
                            .padding(7)
                    }
                    
                    
                }
                
                TextField("Username", text: $username)
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                TextField("Currency", text: $currency)
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                Spacer()
                
                Button("Log out") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
            }
            .padding(40)
            
            
            
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
