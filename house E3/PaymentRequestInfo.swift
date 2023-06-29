//
//  PaymentRequestInfo.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/29/23.
//

import Foundation

class PaymentRequestInfo {
    var name = ""
    var totalMoney = 0.0
    var paymentMethod = ""
    var daysToPay = 0
    var friends: [FriendInfo] = []
    
    
    //getter methods
    func getName() -> String {
        return name
    }
    
    func getTotalMoney() -> Double {
        return totalMoney
    }
    
    func getPaymentMethod() -> String {
        return paymentMethod
    }
    
    func getDaysToPay() -> Int {
        return daysToPay
    }
    
    
    //returns a String array of all the friend names in the payment request info (uses a for loop to call the getName() method on each FriendInfo object and then adds/appends it to the array being returned)
    func getFriends() -> [String] {
        var friendList = [String]()
        
        for names in friends {
            friendList.append(names.getName())
        }
        return friendList
    }
    
    
    //setter methods
    func setName(newName: String) {
        name = newName
    }
    
    func setTotalMoney(newAmount: Double) {
        totalMoney = newAmount
    }
    
    func setTotalPaymentMethod(newMethod: String) {
        paymentMethod = newMethod
    }
    
    func setDaysToPay(newDays: Int) {
        daysToPay = newDays
    }
    
    func addFriend(newFriend: FriendInfo) {
        friends.append(newFriend)
    }
    
    
    
    
}
