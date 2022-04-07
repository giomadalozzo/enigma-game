//
//  MenuView.swift
//  enigma-game WatchKit Extension
//
//  Created by Julia Silveira de Souza on 06/04/22.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Image("gifImage").resizable().scaledToFit()
                Text("Enigma").fontWeight(.bold).font(.system(size: 24))
                                
                List {
                    NavigationLink(destination: TutorialView()) {
                        Text("Tap to play")
                            .foregroundColor(.orange)
                            .font(.system(size: 13))
                    }
                    
                }.listStyle(.carousel).frame(width: 90, height: 10)
                
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
