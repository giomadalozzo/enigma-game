//
//  MotherView.swift
//  enigma-game WatchKit Extension
//
//  Created by Rodrigo de Anhaia on 06/04/22.
//

import SwiftUI

struct MotherView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var actualGame: Game
    @State var whichTab: Int = 0
    
    var body: some View {
        switch viewRouter.currentPage {
        case .menu:
            MenuView()
        case .tutorial:
            TutorialView()
        case .game:
            TabView(selection: $whichTab){
                GameView(game: self.actualGame, tabSelection: $whichTab).tag(0)
                ResultView(game: self.actualGame).tag(1)
            }
        case .endGame:
            EndGameView(game:self.actualGame, tabSelected: $whichTab)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
