//
//  ChargeinPersonView.swift
//  Billest
//
//  Created by Mac-albert on 30/09/23.
//

import SwiftUI

struct GeneralInfoBillView: View {
    @State private var name: String = ""
    @State private var nominal: String = ""
    @State private var description: String = ""
    
    @State private var isAddNewBill = false
    
    @State private var selectedDate = Date()
    
    let fruits = ["Apel", "Pisang", "Jeruk", "Mangga", "Semangka"]
    
    var body: some View {
        VStack{
            List{
                VStack(spacing: 24){
                    VStack(alignment: .leading, spacing: 4){
                        Text("Masukan Nama Acara")
                            .font(.headline)
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
                    VStack(alignment: .leading, spacing: 4){
                        HStack(spacing: 80) {
                            Text("Jumlah Tagihan")
                                .font(.headline)
                            TextField(
                                "Input Name ",
                                text: $name
                            )
                            .disabled(true)
                            .padding(10)
                            .background(Color.white)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                        }
                    }
                    VStack(alignment: .leading, spacing: 4){
                        HStack() {
                            Text("Tanggal")
                                .font(.headline)
                            Spacer()
                            DatePicker(
                                "Pilih Tanggal",
                                selection: $selectedDate,
                                displayedComponents: .date
                            )
                            .textFieldStyle(PlainTextFieldStyle())
                            .labelsHidden() // Menyembunyikan label
                        }
                    }
                    VStack(alignment: .leading, spacing: 4){
                        HStack{
                            Text("Detail")
                                .font(.headline)
                            Spacer()
                            Button(action: {
                                isAddNewBill.toggle()
                            }) {
                                Text("+")
                                    .font(.system(size: 32, weight: .none))
                            }
                        }
                        ForEach(fruits, id: \.self) { fruit in
                            NavigationLink {
                                //                                    RecipeDetailView(meal: meal)
                            } label: {
                                Text(fruit)
                                    .padding(.vertical, 8.0)
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            VStack{
                Button(action: {
                    //                some action
                    
                }) {
                    Text("Create New Bill")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(hex: "519259"))
                .foregroundColor(.white)
                .cornerRadius(16)
            }
            .padding()
            .navigationTitle("Create New Bill")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        .font(.subheadline)
    }
}

struct GeneralInfoBillView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralInfoBillView()
    }
}
