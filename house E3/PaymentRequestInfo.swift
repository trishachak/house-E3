//
//  PaymentRequestInfo.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/29/23.
//

import Foundation

class PaymentRequestInfo {
    var name = ""
    var totalMoney = 0
    var paymentMethod = ""
    var daysToPay = 0
    var friends = [String]()
    
    
    //getter methods
    func getName() -> String {
        return name
    }
    
    func getTotalMoney() -> Int {
        return totalMoney
    }
    
    func getPaymentMethod() -> String {
        return paymentMethod
    }
    
    func getDaysToPay() -> Int {
        return daysToPay
    }
    
    func getFriends() -> [String] {
        return friends
    }
    
    
    //setter methods
    func setName(newName: String) {
        name = newName
    }
    
    func setTotalMoney(newAmount: Int) {
        totalMoney = newAmount
    }
    
    func setTotalPaymentMethod(newMethod: String) {
        paymentMethod = newMethod
    }
    
    func setDaysToPay(newDays: Int) {
        daysToPay = newDays
    }
    
    func addFriend(friendName: String) {
        friends.append(friendName)
    }
    
    
    
    
}
