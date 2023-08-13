//
//  ButtonsView.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 11/08/2023.
//

import SwiftUI

struct ButtonsView: View {
    // MARK: PROPERTIES
    @EnvironmentObject var putValue: PutValue
    @State var player: String
    @State var title: String = ""
    @State var showWinnerSheet: Bool = false
    @State var showNoWinnerSheet: Bool = false

 
    // MARK: BODY VIEW
    var body: some View {
        
        VStack(spacing: 40) {
            turnOfPlayer
            
            Grid {
                firstRow
                secondRow
                thirdRow
            }
            .sheet(isPresented: $showNoWinnerSheet) {
                NoWinnerSheet()
                    .presentationDetents([.medium])
            }
            .sheet(isPresented: $showWinnerSheet) {
                WinnerSheet(player: player)
                    .presentationDetents([.medium])
            }

        }
    }
    
    // MARK: SUBVIEWS
    var turnOfPlayer: some View {
        Text("Player \(player)'s Turn")
            .foregroundColor(Color.white)
            .font(.largeTitle)
            .fontDesign(.monospaced)
            .bold()
    }
    
    // MARK: FIRST ROW
    var firstRow: some View {
        GridRow {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .overlay {
                    Text(putValue.buttons[0].value)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .onTapGesture {
                    if !putValue.checkIsReserved(index: 0) {
                        putPlayerSymbol(index: 0)
                        disableButton(index: 0)
                        
                        if !putValue.whoWin().isEmpty {
                            putValue.blockGame()
                            showWinnerSheet.toggle()
                            
                            return
                        }
                        
                        withAnimation(.spring()) {
                            changePlayer()
                        }
                    }
                    
                    if putValue.haveNoWinner() {
                        showNoWinnerSheet.toggle()
                    }
                    
                }
                .disabled(putValue.buttons[0].disable)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .overlay {
                    Text(putValue.buttons[1].value)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .onTapGesture {
                    if !putValue.checkIsReserved(index: 1) {
                        putPlayerSymbol(index: 1)
                        disableButton(index: 1)
                        if !putValue.whoWin().isEmpty {
                            putValue.blockGame()
                            showWinnerSheet.toggle()
                            
                            return
                        }
                        
                        withAnimation(.spring()) {
                            changePlayer()
                        }
                    }
                    
                    if putValue.haveNoWinner() {
                        showNoWinnerSheet.toggle()
                    }
                }
                .disabled(putValue.buttons[1].disable)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .overlay {
                    Text(putValue.buttons[2].value)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .onTapGesture {
                    if !putValue.checkIsReserved(index: 2) {
                        putPlayerSymbol(index: 2)
                        disableButton(index: 2)
                        
                        if !putValue.whoWin().isEmpty {
                            putValue.blockGame()
                            showWinnerSheet.toggle()
                            
                            return
                        }
                        
                        withAnimation(.spring()) {
                            changePlayer()
                        }
                    }
                    
                    if putValue.haveNoWinner() {
                        showNoWinnerSheet.toggle()
                    }
                }
                .disabled(putValue.buttons[2].disable)

        }
        .frame(width: 100, height: 100)
    }
    
    // MARK: SECOND ROW
    var secondRow: some View {
        GridRow {
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .overlay {
                    Text(putValue.buttons[3].value)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .onTapGesture {
                    if !putValue.checkIsReserved(index: 3) {
                        putPlayerSymbol(index: 3)
                        disableButton(index: 3)
                        
                        if !putValue.whoWin().isEmpty {
                            putValue.blockGame()
                            showWinnerSheet.toggle()
                            
                            return
                        }
                        withAnimation(.spring()) {
                            changePlayer()
                        }
                    }
                    
                    if putValue.haveNoWinner() {
                        showNoWinnerSheet.toggle()
                    }
                }
                .disabled(putValue.buttons[3].disable)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .overlay {
                    Text(putValue.buttons[4].value)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .onTapGesture {
                    if !putValue.checkIsReserved(index: 4) {
                        putPlayerSymbol(index: 4)
                        disableButton(index: 4)
                        
                        if !putValue.whoWin().isEmpty {
                            putValue.blockGame()
                            showWinnerSheet.toggle()
                            
                            return
                        }
                        withAnimation(.spring()) {
                            changePlayer()
                        }
                    }
                    
                    if putValue.haveNoWinner() {
                        showNoWinnerSheet.toggle()
                    }
                }
                .disabled(putValue.buttons[4].disable)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .overlay {
                    Text(putValue.buttons[5].value)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .onTapGesture {
                    if !putValue.checkIsReserved(index: 5) {
                        putPlayerSymbol(index: 5)
                        disableButton(index: 5)
                        
                        if !putValue.whoWin().isEmpty {
                            putValue.blockGame()
                            showWinnerSheet.toggle()
                            
                            return
                        }
                        withAnimation(.spring()) {
                            changePlayer()
                        }
                    }
                    
                    if putValue.haveNoWinner() {
                        showNoWinnerSheet.toggle()
                    }
                }
                .disabled(putValue.buttons[5].disable)
        }
        .frame(width: 100, height: 100)
    }
    
    
    // MARK: THIRD ROW
    var thirdRow: some View {
        GridRow {
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .overlay {
                    Text(putValue.buttons[6].value)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .onTapGesture {
                    if !putValue.checkIsReserved(index: 6) {
                        putPlayerSymbol(index: 6)
                        disableButton(index: 6)
                        
                        if !putValue.whoWin().isEmpty {
                            putValue.blockGame()
                            showWinnerSheet.toggle()
                            
                            return
                        }
                        withAnimation(.spring()) {
                            changePlayer()
                        }
                    }
                    
                    if putValue.haveNoWinner() {
                        showNoWinnerSheet.toggle()
                    }
                }
                .disabled(putValue.buttons[6].disable)

            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .overlay {
                    Text(putValue.buttons[7].value)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .onTapGesture {
                    if !putValue.checkIsReserved(index: 7) {
                        putPlayerSymbol(index: 7)
                        disableButton(index: 7)
                        
                        if !putValue.whoWin().isEmpty {
                            putValue.blockGame()
                            showWinnerSheet.toggle()
                            
                            return
                        }
                        withAnimation(.spring()) {
                            changePlayer()
                        }
                    }
                    
                    if putValue.haveNoWinner() {
                        showNoWinnerSheet.toggle()
                    }
                }
                .disabled(putValue.buttons[7].disable)

            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .overlay {
                    Text(putValue.buttons[8].value)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                .onTapGesture {
                    if !putValue.checkIsReserved(index: 8) {
                        putPlayerSymbol(index: 8)
                        disableButton(index: 8)
                        
                        if !putValue.whoWin().isEmpty {
                            putValue.blockGame()
                            showWinnerSheet.toggle()
                            return
                        }
                        
                        withAnimation(.spring()) {
                            changePlayer()
                        }
                    }
                    
                    if putValue.haveNoWinner() {
                        showNoWinnerSheet.toggle()
                    }
                }
                .disabled(putValue.buttons[8].disable)

        }
        .frame(width: 100, height: 100)
    }
    
    // MARK: FUNCTIONS
    func putPlayerSymbol(index: Int) {
        putValue.buttons[index].value = player
    }
    
    func disableButton(index: Int) {
        putValue.buttons[index].disable = true
    }
    
    func changePlayer() {
        if player == "X" {
            player = "O"
        } else {
            player = "X"
        }
    }
}

// MARK: PREVIEW
struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView(player: "X")
            .environmentObject(PutValue())
    }
}
