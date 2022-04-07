//
//  TutorialView.swift
//  enigma-game WatchKit Extension
//
//  Created by Julia Silveira de Souza on 06/04/22.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 12) {
                
                Text("How to play").fontWeight(.semibold).font(.system(size: 18))
                
                Text("You have 5 chances. Try to guess the correct sequence to win this challenging game.").fontWeight(.light).font(.system(size: 15)).lineSpacing(1)
                
                List {
                    NavigationLink(destination: GameView()) {
                        Text("Got it!")
                            .foregroundColor(.orange)
                            .bold()
                    }
                    
                }.listStyle(.carousel).scaledToFit()
                
            }.frame(width: 201, height: 180)
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
