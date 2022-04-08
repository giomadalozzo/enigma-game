//
//  PuzzleOptionView.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 05/04/22.
//

import SwiftUI

struct PuzzleOptionView: View {
    var circleColor: Color?
    var symbol: String?
    var index: Int?
    var type: Int?
    var isResult: Bool
    @ObservedObject var game: Game
    
    init(type: Int?, index: Int?, isResult: Bool, game: Game){
        self.isResult = isResult
        self.index = index
        self.type = type
        self.game = game
        
        if !isResult {
            getColorSymbol(type: self.type!)
        }else{
            setResult(index: self.index!, game: self.game)
        }
    }
    
    var body: some View {
        VStack{
            ZStack{
                Circle().foregroundColor(circleColor!).frame(width: 23, height: 23)
                Image(systemName: symbol!)
            }
        }
    }
}
