//
//  ResultView.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 07/04/22.
//

import SwiftUI

struct ResultView: View {
    @StateObject var game:Game
    
    var body: some View {
        generateResults()
        PuzzleOptionView(type: type)
    }
    
    func generateResults(){
        PuzzleOptionView(type: self.game.selectedFirst)
        PuzzleOptionView(type: self.game.selectedFirst)
        PuzzleOptionView(type: self.game.selectedFirst)
        PuzzleOptionView(type: self.game.selectedFirst)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
