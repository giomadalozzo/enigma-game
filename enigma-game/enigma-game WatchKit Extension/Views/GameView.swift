//
//  Game.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 05/04/22.
//

import SwiftUI

struct GameView: View {
    
    @ObservedObject var game: Game
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var tabSelection: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            ZStack{
                HStack{
                    ForEach((1...4), id: \.self) {position in
                        PickerView(game: self.game, position: position)
                    }
                }
            }.overlay(Rectangle().opacity(0.3).frame(height: 30).offset(x:0, y: 8))
            
            Button("Confirm") {
                self.game.actualRound += 1
                self.game.didWin = checkResult(game: self.game)
                
                if self.game.actualRound <= 4 {
                    if self.game.didWin {
                        self.viewRouter.currentPage = .endGame
                    }
                }else{
                    withAnimation {
                        self.viewRouter.currentPage = .endGame
                    }
                }
                self.tabSelection = 1
            }
            .frame(width: 154, height: 10).padding(.bottom, 18)
        }.ignoresSafeArea().onDisappear {
            print(self.game.didWin)
        }
    }
}
