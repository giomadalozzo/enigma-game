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
            VStack(alignment: .center, spacing: 6) {
                
                Text("How to play").fontWeight(.semibold).font(.system(size: 15))
                
                Text("You have 5 chances. \nTry to guess the correct sequence to win. ").fontWeight(.light).font(.system(size: 15)).lineSpacing(1).multilineTextAlignment(.center)
                
                Button("Got it!") {
                    withAnimation {
                        
                        viewRouter.currentPage = .game
                       }
                }.foregroundColor(.purple)
            }.frame(width: .infinity, height:  .infinity).ignoresSafeArea()
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
