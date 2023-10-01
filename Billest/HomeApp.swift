//
//  HomeApp.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//

import SwiftUI

struct HomeApp: View {
    let items = ["Item 1", "Item 2", "Item 3"]
    @State private var isAddNewBill = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(items, id: \.self) { item in
                    BillCardView(name: "Tagihan Listrik", amount: 150.0, date: "28 September 2023", billStatus: .partiallyPaid, billingDetail: BillModel.preview)
                        .background(
                            NavigationLink("", destination: DetailBillView(billDetail: BillModel.preview))
                                .opacity(0)
                        )
                }
            }
            .listStyle(.plain)
            .navigationTitle("Ongoing in Charge")
//            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Action
                        isAddNewBill = true
                    }) {
                        Text("+")
                            .font(.system(size: 32, weight: .none))
                    }
                }
            }
            
            NavigationLink(destination: GeneralInfoBillView(), isActive: $isAddNewBill) {
                EmptyView()
            }
        }
    }
}

struct HomeApp_Previews: PreviewProvider {
    static var previews: some View {
        HomeApp()
    }
}
