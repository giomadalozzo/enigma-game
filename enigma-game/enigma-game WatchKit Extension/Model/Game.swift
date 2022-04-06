import Foundation

class Game: ObservableObject {
    @Published var didWin: Bool
    @Published var selectedFirst: Int?
    @Published var selectedSecond: Int?
    @Published var selectedThird: Int?
    @Published var selectedFourth: Int?
    @Published var whichRoundWon: Int?
    @Published var correctAnswer: [Int]?
    
    init(didWin: Bool){
        self.didWin = didWin
    }
}
