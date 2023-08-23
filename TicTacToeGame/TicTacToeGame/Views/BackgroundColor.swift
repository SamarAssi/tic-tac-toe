//
//  BackgroundColor.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 10/08/2023.
//

import SwiftUI

struct BackgroundColor: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("SkyColor"), Color("AquaColor")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

struct BackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColor()
    }
}
