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
    var type: Int
    
    init(type: Int){
        self.type = type
        getColorSymbol(type: self.type)
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

//struct PuzzleOptionView_Previews: PreviewProvider {
//    static var previews: some View {
//        PuzzleOptionView()
//    }
//}
