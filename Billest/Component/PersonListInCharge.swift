//
//  PersonListInCharge.swift
//  Billest
//
//  Created by Albert Mandiri on 29/09/23.
//

import SwiftUI

struct PersonListInCharge: View {
    @State private var items = Items(name: "Item 1", isSelected: false, amount: 10.0)
    
    var body: some View {
        HStack(spacing: 16) {
            InitialsImage(name: "Agus Handayana")
            VStack(spacing: 4){
                Text(items.name)
                Text("$\(items.amount, specifier: "%.2f")")
            }
            .font(.body)
            Spacer()
            RadioButtonView(isSelected: $items.isSelected)
//            RadioButtonView(isSelected: $items[items.firstIndex(where: { $0.id == item.id })!].isSelected)
            
        }
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
