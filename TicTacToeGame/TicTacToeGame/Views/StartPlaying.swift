//
//  StartPlaying.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 11/08/2023.
//

import SwiftUI

struct StartPlaying: View {
    
    @State var player: String
    
    @EnvironmentObject var putValue: PutValue
    
    var body: some View {
        ZStack {
            BackgroundColor()
            
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 60) {
                    
                    ButtonsView(player: player)
                    
                    restartButton
                    
                }
                .padding(.top, 150)
            }
        }
    }
    
    var restartButton: some View {
        Button("Restart") {
            putValue.restartGame()
        }
        .font(.headline)
        .fontDesign(.monospaced)
        .frame(width: 120, height: 50)
        .background(Color.white)
        .foregroundColor(Color.black)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
  
}

struct StartPlaying_Previews: PreviewProvider {
    static var previews: some View {
        StartPlaying(player: "X")
            .environmentObject(PutValue())
    }
}
