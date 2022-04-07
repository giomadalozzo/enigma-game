//
//  MotherView.swift
//  enigma-game WatchKit Extension
//
//  Created by Rodrigo de Anhaia on 06/04/22.
//

import SwiftUI

struct MotherView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
            case .page1:
                GameView()
            case .page2:
            EndGameView(game: Game.init(didWin: true))
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}