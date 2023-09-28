//
//  HomeApp.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//

import SwiftUI

struct HomeApp: View {
    let items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(items, id: \.self) { item in
                    BillCardView(name: "Tagihan Listrik", amount: 150.0, date: "28 September 2023", billStatus: .partiallyPaid, billingDetail: BillModel.preview)
                        .background(
                            NavigationLink("", destination: DetailBillView(item: item))
                                .opacity(0)
                        )
                }
            }
            .listStyle(.plain)
            .navigationTitle("Ongoing in Charge")
            
                
        }
    }
}

struct HomeApp_Previews: PreviewProvider {
    static var previews: some View {
        HomeApp()
    }
}
