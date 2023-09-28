//
//  BillDetail.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//

import Foundation

struct BillDetail: Codable {
    var personInCharge: User
    var nominal: Int?
    var done: Bool = false
}
