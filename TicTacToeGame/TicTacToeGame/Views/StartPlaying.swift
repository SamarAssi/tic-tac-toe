//
//  StartPlaying.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 11/08/2023.
//

import SwiftUI

struct StartPlaying: View {
    
    @State var player: String
    @State var time: Int = 0
    
    @State var isTimerRunning = false
       @State private var startTime =  Date()
       @State private var timerString = "0.00"
       let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()

    
    @EnvironmentObject var putValue: PutValue
    
    var body: some View {
        ZStack {
            BackgroundColor()
            
            VStack(spacing: 60) {
                timerContent
                
                ButtonsView(player: player)
                
                restartButton
                
            }
        }
    }
    
    var timerContent: some View {
        
        Text(self.timerString)
            .font(Font.system(.title, design: .monospaced))
            .onReceive(timer) { _ in
                if self.isTimerRunning {
                    timerString = String(format: "%.2f", (Date().timeIntervalSince( self.startTime)))
                }
            }
            .onTapGesture {
                if !isTimerRunning {
                    timerString = "0.00"
                    startTime = Date()
                }
                isTimerRunning.toggle()
            }
            .frame(width: 120, height: 50)
            .background(Color.white)
            .cornerRadius(50)
    }
    
    var restartButton: some View {
        Button("Restart") {
            putValue.restartGame()
        }
        .font(.headline)
        .fontDesign(.monospaced)
        .frame(width: 100, height: 50)
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
