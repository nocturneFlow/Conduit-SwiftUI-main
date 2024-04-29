//
//  ChipView.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import SwiftUI

struct ChipView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.caption)
                .foregroundColor(Color("ButtonText"))
                .fontWeight(.semibold)
                .padding(6)
        }
        .background(Color.accentColor)
        .cornerRadius(20)
        .padding(.top,4)
    }
}

struct ChipView_Previews: PreviewProvider {
    static var previews: some View {
        ChipView(title: "Chips")
    }
}
