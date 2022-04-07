//
//  TutorialView.swift
//  enigma-game WatchKit Extension
//
//  Created by Julia Silveira de Souza on 06/04/22.
//

import SwiftUI

struct TutorialView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                Text("How to play")
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                                
                Text("You have 5 chances. \nTry to guess the correct sequence to win this challenging game.")
                    .fontWeight(.light)
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 8)
                
                Button("Tap to play") {
                    withAnimation {
                        viewRouter.currentPage = .game
                       }
                }.foregroundColor(.orange)
                
            }
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
