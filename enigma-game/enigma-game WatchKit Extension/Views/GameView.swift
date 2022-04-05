//
//  Game.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 05/04/22.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        ZStack{
            HStack{
                ForEach((1...4), id: \.self) {_ in
                    PickerView()
                }
            }
        }.overlay(Rectangle().opacity(0.3).frame(height: 30).offset(x:0, y: 8))
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
