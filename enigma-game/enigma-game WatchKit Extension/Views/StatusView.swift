//
//  StatusView.swift
//  enigma-game WatchKit Extension
//
//  Created by Giovanni Madalozzo on 06/04/22.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1.5).frame(width: 40, height: 40).foregroundColor(.green)
            PuzzleOptionView(type: 1)
                Circle().frame(width: 5, height: 5)
                Spacer()
        }.overlay(Image(systemName: "x.circle.fill").offset(x:11, y: -11).foregroundColor(.green))
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
