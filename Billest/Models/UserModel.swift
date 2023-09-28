//
//  UserModel.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//

import Foundation

struct User: Codable{
    var id: String?
    var name: String
    var password: String
    var email: String
    var accountCreated: Date?
    var time: Int?
    var frequency: Int?
}
