//
//  StatusView.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 06/04/22.
//

import SwiftUI

struct StatusView: View {
    var symbol: String?
    var color: Color?
    var index: Int
    @ObservedObject var game: Game
    
    init(game: Game, index: Int){
        self.index = index
        self.game = game
        setSymbol()
    }
    var body: some View {
        Image(systemName: symbol!).offset(x:11, y: -11).foregroundColor(color!)
    }
    
    mutating func setSymbol(){
        print("index")
        print(index)
        let selectedOption = game.overlay[index]
        
        switch selectedOption{
        case .wrong:
            self.symbol = "x.circle.fill"
            self.color = .red
        case .contains:
            self.symbol = "exclamationmark.circle.fill"
            self.color = .yellow
        case .correct:
            self.symbol = "checkmark.circle.fill"
            self.color = .green
        default:
            print("error")
        }
        
    }
}
