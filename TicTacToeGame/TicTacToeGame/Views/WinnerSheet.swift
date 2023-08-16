//
//  WinnerSheet.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 12/08/2023.
//

import SwiftUI

struct WinnerSheet: View {
    @State var player: String
    @State var animate: Bool = false
    var playerColor: Color {
        if player == "X" {
            return Color.red
        } else {
            return Color.green
        }
    }
    
    @EnvironmentObject var putValue: PutValue
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 40) {
            
            Button {
                putValue.restartGame()
                withAnimation(.spring()) {
                    presentationMode.wrappedValue.dismiss()
                }
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.5))
                    .frame(width: 50, height: 5)
            }
            
            Spacer()
            
            Group {
                Text("The winner is ")
                +
                Text("\(player) 🥳")
                    .foregroundColor(playerColor)
            }
            .font(.title)
            .bold()
            .fontDesign(.monospaced)
            
            Button("Restart Game") {
                putValue.restartGame()
                withAnimation(.spring()) {
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .frame(width: 200, height: 80)
            .background(BackgroundColor())
            .foregroundColor(Color.white)
            .font(.headline)
            .fontDesign(.monospaced)
            .cornerRadius(20)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y : animate ? 20 : 50)
            .onAppear(perform: addAnimation)
         
            Spacer()
        }
        .padding()
        
    }
    
    func addAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct WinnerSheet_Previews: PreviewProvider {
    static var previews: some View {
        WinnerSheet(player: "X")
            .environmentObject(PutValue())
    }
}
