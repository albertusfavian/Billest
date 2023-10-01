//
//  AddBillView.swift
//  Billest
//
//  Created by Mac-albert on 30/09/23.
//

import SwiftUI

struct AddBillView: View {
    @State private var name: String = ""
    @State private var nominal: String = ""
    @State private var description: String = ""
    
    var body: some View {
        VStack(spacing: 24){
            VStack(alignment: .leading, spacing: 4){
                Text("Masukan Nama Tertagih")
                    
                TextField(
                    "Input Name ",
                    text: $name
                )
                .padding(10)
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("Masukan Nominal Tertagih")
                TextField(
                    "Input Nominal",
                    text: $nominal
                )
                .padding(10)
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .keyboardType(.numberPad)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            }

            VStack(alignment: .leading, spacing: 4){
                Text("Masukan Deskripsi")
                TextField(
                    "Add Description",
                    text: $description
                )
                .padding(.bottom, 60)
                .padding([.top, .leading, .trailing], 10)
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            }
            Spacer()
            
            Button(action: {
//                some action
                
            }) {
                Text("Add Bill")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(hex: "519259"))
            .foregroundColor(.white)
            .cornerRadius(10.0)
            .padding(.bottom, 15)
        }
        .navigationTitle("Add Bill")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
    }
}

struct AddBillView_Previews: PreviewProvider {
    static var previews: some View {
        AddBillView()
    }
}
