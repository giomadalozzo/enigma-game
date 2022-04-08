//
//  ResultView.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 07/04/22.
//

import SwiftUI

struct ResultView: View {
    
    var results: [Int] = []
    @ObservedObject var game: Game
    
    var body: some View {
        
        ScrollView{
            Spacer(minLength: 20)
            VStack{
                ForEach(Array(stride(from: 0, to: game.rounds.count, by: 4)), id:\.self) { roundJump in
                    HStack(spacing: 5){
                        ForEach(Array(stride(from: roundJump, to: roundJump+4, by: 1)), id:\.self) { index in
                            PuzzleOptionView(type: nil, index: index, isResult: true, game: game).overlay(StatusView(game: game, index: index))
                        }
                    }
                }
            }.frame(maxWidth: .infinity)
        }.frame(maxWidth: .infinity)
    }
}
