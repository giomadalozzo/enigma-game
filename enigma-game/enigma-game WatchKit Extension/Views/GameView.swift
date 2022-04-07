//
//  Game.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 05/04/22.
//

import SwiftUI

struct GameView: View {
    
    var answer: [Int]?
    @StateObject var actualGame: Game = Game(didWin: false)
    @EnvironmentObject var viewRouter: ViewRouter
    
    init(){
        self.answer = generateAnswer()
        self.actualGame.correctAnswer = answer
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            ZStack{
                HStack{
                    ForEach((1...4), id: \.self) {position in
                        PickerView(game: self.actualGame, position: position)
                    }
                }
            }.overlay(Rectangle().opacity(0.3).frame(height: 30).offset(x:0, y: 8))
            
            Button("Confirm") {

                checkResult(game: actualGame)
                withAnimation {
                    self.viewRouter.currentPage = .page2
                   }
            }
            .frame(width: 154, height: 10).padding(.bottom, 18)
        }.ignoresSafeArea()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView().environmentObject(ViewRouter())
    }
}
