//
//  ChoosePlayerView.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 10/08/2023.
//

import SwiftUI

struct ChoosePlayerView: View {
    
    var body: some View {
        
        ZStack {

            backgroundContent

            ScrollView(showsIndicators: false) {
                Spacer()
                VStack(spacing: 100) {
                    Spacer()
                    Text("TIC-TAC-TOE")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    Spacer()

                    VStack {
                        Text("Pick who goes first?")
                            .font(.body)
                            .padding(.bottom, 20)
                        twoChoices
                    }
                }
                .foregroundColor(Color.white)
                .padding(.top, 50)
            }
        }
    }
    
    var backgroundContent: some View {
        BackgroundColor()
            .overlay {
                OShape()
                XShape()
            }
    }
    
    var twoChoices: some View {
        
        HStack(spacing: 20) {
          
            NavigationLink {
                StartPlaying(player: "X")
            } label: {
                xGamer
            }
            .frame(width: 150, height: 150)
            .background(Color.white)
            .cornerRadius(20)

            NavigationLink {
                StartPlaying(player: "O")
            } label: {
                oGamer
            }
            .frame(width: 150, height: 150)
            .background(Color.white)
            .cornerRadius(20)
        }
    }
    
    var xGamer: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .rotationEffect(Angle(degrees: 45))
            
            RoundedRectangle(cornerRadius: 50)
                .rotationEffect(Angle(degrees: -45))
        }
        .frame(width: 20, height: 130)
        .foregroundColor(Color.red)
    }
    
    var oGamer: some View {
        Circle()
            .stroke(Color.green, lineWidth: 20)
            .frame(width: 100, height: 100)
            
    }
}



struct ChoosePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationStack {
                ChoosePlayerView()
            }
            .preferredColorScheme(.light)
            
            NavigationStack {
                ChoosePlayerView()
            }
            .preferredColorScheme(.dark)
        }
        
    }
}
