//
//  FriendInfo.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/29/23.
//

import Foundation
class FriendInfo {
    var name = ""
    
    init(name: String) {
        self.name = name
    }
    
    //get
    func getName() -> String {
        return name
    }
    
    
    //set
    func setName(newName: String) {
        name = newName
    }
    
    
}
