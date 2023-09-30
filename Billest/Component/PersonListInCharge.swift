//
//  PersonListInCharge.swift
//  Billest
//
//  Created by Albert Mandiri on 29/09/23.
//

import SwiftUI

struct PersonListInCharge: View {
    @State private var items: [Items] = [
            Items(name: "Item 1", isSelected: false, amount: 10.0),
            Items(name: "Item 2", isSelected: false, amount: 20.0),
            Items(name: "Item 3", isSelected: false, amount: 30.0)
        ]
    
    var body: some View {
        List(items) { item in
            HStack(spacing: 16) {
                InitialsImage(name: "Agus Handayana")
                VStack(spacing: 4){
                    Text(item.name)
                    Text("$\(item.amount, specifier: "%.2f")")
                }
                Spacer()
                RadioButtonView(isSelected: $items[items.firstIndex(where: { $0.id == item.id })!].isSelected)
                    
            }
        }
        .navigationTitle("List dengan Radio Button")
    }
}

struct PersonListInCharge_Previews: PreviewProvider {
    static var previews: some View {
        PersonListInCharge()
    }
}

struct Items: Identifiable {
    let id = UUID()
    let name: String
    var isSelected: Bool
    let amount: Double
}


struct RadioButtonView: View {
    @Binding var isSelected: Bool

    var body: some View {
        Button(action: {
            isSelected.toggle()
        }) {
            if isSelected {
                Image(systemName: "checkmark.circle")
            } else {
                Image(systemName: "circle")
            }
        }
        .font(.system(size: 30, weight: .black))
        .foregroundColor(isSelected ? .blue : .gray)
            
    }
}
