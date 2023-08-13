//
//  OShape.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 10/08/2023.
//

import SwiftUI

struct OShape: View {
    var body: some View {
//        Path(ellipseIn: CGRect(x: 250, y: 50, width: 300, height: 300))
//            .stroke(Color.gray.opacity(0.2), lineWidth: 80)
        
        Circle()
            .stroke(Color.gray.opacity(0.2), lineWidth: 80)
            .frame(width: 300, height: 300)
            .offset(x: 200, y: -200)

            
    }
}

struct OShape_Previews: PreviewProvider {
    static var previews: some View {
        OShape()
    }
}
