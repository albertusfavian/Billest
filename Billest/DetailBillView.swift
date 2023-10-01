//
//  DetailBillView.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//

import SwiftUI

struct DetailBillView: View {
    var billDetail: BillModel

    var body: some View {
        VStack{
            PersonListInCharge()
        }
    }
}

struct DetailBillView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBillView(billDetail: BillModel.preview)
    }
}
