//
//  BillModel.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//

import Foundation

struct BillModel: Codable {
    var id: String?
    var billName: String?
    var billDate: Date?
    var detailBill: [BillDetail]?
    var billPrice: Int?
    var subTotal: Int?
    var serviceCharge: Int?
    var discount: Int?
    var others: Int?
    var collectiblePerson: [User]?
    var status: BillStatus?
    
}

enum BillStatus: String, Codable{
    case notPaid = "Not Paid"
    case partiallyPaid = "Partailly Paid"
    case paid = "Done"
}

extension BillModel {
    static let preview: BillModel = BillModel(
        id: "123456",
        billName: "Tagihan Listrik",
        billDate: Date(),
        detailBill: [
            BillDetail(
                personInCharge: User(id: "user1", name: "John Doe", password: "password123", email: "john@example.com"),
                nominal: 100,
                done: false
            ),
            BillDetail(
                personInCharge: User(id: "user2", name: "Jane Smith", password: "smith456", email: "jane@example.com"),
                nominal: 50,
                done: true
            )
        ],
        billPrice: 150,
        subTotal: 150,
        serviceCharge: 10,
        discount: 5,
        others: 0,
        collectiblePerson: [
            User(id: "user1", name: "John Doe", password: "password123", email: "john@example.com"),
            User(id: "user2", name: "Jane Smith", password: "smith456", email: "jane@example.com")
        ],
        status: .notPaid
    )
}
