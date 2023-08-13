//
//  TicTacToeGameApp.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 10/08/2023.
//

import SwiftUI

@main
struct TicTacToeGameApp: App {
    
    @StateObject var putValue = PutValue()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ChoosePlayerView()
            }
            .environmentObject(putValue)
        }
    }
}
