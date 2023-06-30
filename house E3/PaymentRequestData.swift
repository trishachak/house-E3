//
//  PaymentRequestData.swift
//  house E3
//
//  Created by Trisha Chakraborty on 6/30/23.
//

import Foundation
class PaymentRequestData : ObservableObject {
    @Published var newRequest: PaymentRequestInfo? = nil
    @Published var requestArray : [PaymentRequestInfo] = []
}
