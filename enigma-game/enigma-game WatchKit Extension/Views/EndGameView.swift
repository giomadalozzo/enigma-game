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
    
    var record: Int = 20
    
    var hitCount: Int = 5
    
    var body: some View {
        VStack(alignment: .center) {
           Spacer(minLength: 42)
            
            Text(game.didWin ? "You Got it!" : "Wrong Code")
                .font(.title3)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Spacer()
            
            Text(game.didWin ? "You got the right code!\nYour record is \(game.correctAnswer?.count ?? 5) in a row!" : "Your record is \(record) in a row!")
                .font(.caption2)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
            Spacer(minLength: 42)

            Button("Play Again") {
                withAnimation {
                    viewRouter.currentPage = .game
                   }
            }
            .frame(width: 184, height: 39)
            Spacer()
        }
        .ignoresSafeArea(.all)
    }
}

struct EndGameView_Previews: PreviewProvider {
    static var previews: some View {
        EndGameView(game: Game.init(didWin: false)).environmentObject(ViewRouter())
    }
}
