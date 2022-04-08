//
//  PickerView.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 05/04/22.
//

import SwiftUI

struct PickerView: View {
    @State private var isSelected = 1
    @ObservedObject var game: Game
    var position: Int
    
    var body: some View {
        Picker("", selection: $isSelected) {
            ForEach((1...6), id: \.self) {option in
                PuzzleOptionView(type: option, index: nil, isResult: false, game: game).tag(option)
            }
        }.focusBorderHidden()
            .pickerStyle(WheelPickerStyle()).frame(width: 40).onChange(of: isSelected) { selected in
                getSelected(selected: selected)
            }
        
    }
}
