//
//  PutValue.swift
//  TicTacToeGame
//
//  Created by Samar Assi on 11/08/2023.
//

import Foundation


class PutValue: ObservableObject {
    @Published var buttons: [ButtonType] = []
    
    init() {
        getValue()
    }
    
    func getValue() {
        let newButtons = [
            ButtonType(value: "", isReserved: false, disable: false),
            ButtonType(value: "", isReserved: false, disable: false),
            ButtonType(value: "", isReserved: false, disable: false),
            ButtonType(value: "", isReserved: false, disable: false),
            ButtonType(value: "", isReserved: false, disable: false),
            ButtonType(value: "", isReserved: false, disable: false),
            ButtonType(value: "", isReserved: false, disable: false),
            ButtonType(value: "", isReserved: false, disable: false),
            ButtonType(value: "", isReserved: false, disable: false)
        ]
        
        buttons.append(contentsOf: newButtons)
    }
    
    func checkIsReserved(index: Int) -> Bool {
        if buttons[index].isReserved {
            return true
        }
        return false
    }
    
    func didWin(index1: Int, index2: Int, index3: Int) -> Bool {
        if buttons[index1].value == buttons[index2].value && buttons[index1].value == buttons[index3].value {
            return true
        }
        return false
    }
    
    func whoWin() -> String {
        /*
         0       1       2
         3        4      5
         6.      7.      8
         */
        if didWin(index1: 0, index2: 1, index3: 2) {
            return buttons[0].value
        } else if didWin(index1: 3, index2: 4, index3: 5) {
            return buttons[3].value
        } else if didWin(index1: 6, index2: 7, index3: 8) {
            return buttons[6].value
        } else if didWin(index1: 0, index2: 3, index3: 6) {
            return buttons[0].value
        } else if didWin(index1: 1, index2: 4, index3: 7) {
            return buttons[1].value
        } else if didWin(index1: 2, index2: 5, index3: 8) {
            return buttons[2].value
        } else if didWin(index1: 0, index2: 4, index3: 8) {
            return buttons[0].value
        } else if didWin(index1: 2, index2: 4, index3: 6) {
            return buttons[2].value
        } else {
            return ""
        }
    }
    
    func isEmptyBoxes() -> Bool {
        var count = 0
        
        for index in 0..<9 {
            if buttons[index].value.isEmpty {
                count += 1
            }
        }
        
        if count > 0 {
            return true
        }
        
        return false
    }
    
    func blockGame() {
        for index in 0..<9 {
            buttons[index].value = ""
            buttons[index].disable = true
        }
    }
    
    func restartGame() {
        for index in 0..<9 {
            buttons[index].value = ""
            buttons[index].disable = false
        }
    }
    
    func haveNoWinner() -> Bool {
        if !isEmptyBoxes() && whoWin().isEmpty {
            return true
        }
        return false
    }
}
