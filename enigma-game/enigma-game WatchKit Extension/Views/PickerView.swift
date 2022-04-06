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
                PuzzleOptionView(type: option).tag(option)
            }
        }.focusBorderHidden()
            .pickerStyle(WheelPickerStyle()).frame(width: 40).onChange(of: isSelected) { selected in
                getSelected(selected: selected)
            }
        
    }
}

//struct PickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickerView()
//    }
//}
