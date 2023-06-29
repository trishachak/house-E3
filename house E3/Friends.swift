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
            VStack {
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: Settings()) {
                        Image(systemName: "gearshape")
                    }
                }
                .padding(20)
                
                Spacer()
                
                Text("Friends")
                    .font(.largeTitle)
                    .bold()
                
                let namesArray = printNames(friendList: friendInfoArray)
                List(namesArray, id: \.self) {
                    bff in
                    Text(bff)
                    
                }
                
                
                TextField("enter name", text: $friendName)
                    .multilineTextAlignment(.center)
                
                Button("create new friend") {
                    friendInfoArray.append(FriendInfo(name: friendName))
                }
                
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

func printNames(friendList: [FriendInfo]) -> [String] {
    var friendNames = [String]()
    
    for friend in friendList {
        friendNames.append(friend.getName())
    }
    
    return friendNames
}
