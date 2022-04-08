//
//  EndGameView.swift
//  enigma-game WatchKit Extension
//
//  Created by Rodrigo de Anhaia on 06/04/22.
//

import SwiftUI

struct EndGameView: View {
    @ObservedObject var game: Game
    @EnvironmentObject var viewRouter: ViewRouter
    @Binding var tabSelected: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
           Spacer(minLength: 10)
            
            Text(self.game.didWin ? "Congrats!" : "Oh no!")
                .font(.title3)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            //Spacer()
            
            Text(self.game.didWin ? "You got the right code 🎉" : "It wasn't this time 🥲 \nTry again.")
                .font(.caption2)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
            //Spacer(minLength: 42)

            Button("Play Again") {
                withAnimation {
                    tabSelected = 0
                    viewRouter.currentPage = .game
                    
                    self.game.didWin = false
                    self.game.actualRound = 0
                    
                    self.game.selectedFirst = nil
                    self.game.selectedSecond = nil
                    self.game.selectedThird = nil
                    self.game.selectedFourth = nil
                    
                    self.game.firstCorrect = .wrong
                    self.game.secondCorrect = .wrong
                    self.game.thridCorrect = .wrong
                    self.game.fourthCorrect = .wrong
                    
                    self.game.rounds = []
                    self.game.overlay = []
                    self.game.correctAnswer = self.game.generateAnswer()
                   }
            }.foregroundColor(.purple)
//            .frame(width: .infinity, height: .infinity)
            .onAppear {
                print(self.game.didWin)
            }
            Spacer()
        }
        .ignoresSafeArea(.all)
    }
}
