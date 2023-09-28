//
//  BillCardView.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//

import SwiftUI

struct BillCardView: View {
    var name: String
    var amount: Double
    var date: String
    var billStatus: BillStatus

    var billingDetail: BillModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack{
                Text(name)
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
                Text("Rp \(String(format: "%.2f", amount))")
            }
            HStack {
                Text("Tanggal Bill: \(date)")
                
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            
            Divider()
            
            HStack{
                Text(billStatus.rawValue)
                    .font(.headline)
                    .foregroundColor(Color(hex: getTextStatusColor(status: billStatus)))
                Spacer()
                Button(action: {
                   print("View Detail Pressed")
                }) {
                    Text("View Details")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.gray)
                        .cornerRadius(16)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 4)
    }
    
    func getTextStatusColor(status: BillStatus) -> String {
        switch status{
        case .notPaid:
            return "D42223"
        case .partiallyPaid:
            return "FFD230"
        case .paid:
            return "00BB38"
        }
    }
    
    func getTextStatusBackground(status: BillStatus) -> String {
        return "000000"
    }
}

struct BillCardView_Previews: PreviewProvider {
    static var previews: some View {
        BillCardView(name: "Nama", amount: 120000, date: "13 Januari 2023 - 14.00", billStatus: .paid, billingDetail: BillModel.preview)
    }
}
