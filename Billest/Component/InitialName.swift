//
//  InitialName.swift
//  Billest
//
//  Created by Albert Mandiri on 29/09/23.
//

import SwiftUI

import SwiftUI

struct InitialsImage: View {
    let name: String

    var body: some View {
        let initials = initialsFromName(name)
        return Text(initials)
            .font(.system(size: 20, weight: .black))
            .foregroundColor(.white)
            .frame(width: 40, height: 40)
            .background(Color.blue)
            .clipShape(Circle())
    }

    private func initialsFromName(_ name: String) -> String {
        let words = name.split(separator: " ")
        var initials = ""
        for word in words.prefix(2) {
            initials += word.prefix(1)
        }
        return initials.uppercased()
    }
}


struct InitialName_Previews: PreviewProvider {
    static var previews: some View {
        InitialsImage(name: "Agus Herma")
    }
}
