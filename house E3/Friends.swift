//
//  Friends.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/28/23.
//

import SwiftUI

struct Friends: View {
    @State var friendInfoArray = [FriendInfo]()
    @State var friendName = ""
    
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
                    
                    Spacer()
                    
                    VStack {
                        Text("Friends")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(Color("Rich Black"))
                        
                        let namesArray = printNames(friendList: friendInfoArray)
                        List(namesArray, id: \.self) {
                            bff in
                            Text("🩵 " + bff)
                            
                        }
                        .cornerRadius(15)
                    }
                    .padding(30)
                    
                    TextField("Enter Name", text: $friendName)
                        .multilineTextAlignment(.center)
                    
                    Button("Create New Friend") {
                        friendInfoArray.append(FriendInfo(name: friendName))
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Indigo Dye"))
                    
                    Spacer()
                    
                    Spacer()
                    
                }
            }
            
        }
    }
}

struct Friends_Previews: PreviewProvider {
    static var previews: some View {
        Friends()
    }
}

func printNames(friendList: [FriendInfo]) -> [String] {
    var friendNames = [String]()
    
    for friend in friendList {
        friendNames.append(friend.getName())
    }
    
    return friendNames
}
