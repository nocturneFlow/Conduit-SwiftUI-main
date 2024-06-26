//
//  PulsateCircle.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import SwiftUI

struct PulsateCircle: View {
    @State private var scale: CGFloat = 1.0
    var body: some View {
        Circle()
                   .fill(Color.red)
//                    .stroke(Color.red)
                    .frame(width: 200, height: 200)
                    .scaleEffect(scale)
                    .animation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true))
                    .onAppear {
                        self.scale = 1.2
                    }
    }
}

struct PulsateCircle_Previews: PreviewProvider {
    static var previews: some View {
        PulsateCircle()
    }
}
