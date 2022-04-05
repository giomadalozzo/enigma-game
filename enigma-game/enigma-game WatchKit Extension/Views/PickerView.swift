//
//  PickerView.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 05/04/22.
//

import SwiftUI

struct PickerView: View {
    @State private var isSelected = 1
    
    var body: some View {
        Picker("", selection: $isSelected) {
            PuzzleOptionView(circleColor: .red, symbol: "star.fill").tag(1)
            
            Image(systemName: "square").tag(2)
            Image(systemName: "triangle").tag(3)
            Image(systemName: "hexagon").tag(4)
        }.focusBorderHidden()
            .pickerStyle(WheelPickerStyle()).frame(width: 40)
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
