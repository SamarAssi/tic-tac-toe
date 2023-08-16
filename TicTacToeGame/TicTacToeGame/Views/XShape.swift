//
//  XShape.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 10/08/2023.
//

import SwiftUI

struct XShape: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 80, height: 500)
                .rotationEffect(Angle(degrees: 40))
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 80, height: 500)
                .rotationEffect(Angle(degrees: -40))
        }
        .offset(x: -100, y: -30)
        .foregroundColor(Color.gray.opacity(0.2))
    }
    
}

struct XShape_Previews: PreviewProvider {
    static var previews: some View {
        XShape()
    }
}
