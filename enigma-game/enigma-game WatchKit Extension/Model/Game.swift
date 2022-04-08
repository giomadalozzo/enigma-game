import Foundation

class Game: ObservableObject {
    @Published var didWin: Bool
    @Published var selectedFirst: Int?
    @Published var selectedSecond: Int?
    @Published var selectedThird: Int?
    @Published var selectedFourth: Int?
    @Published var whichRoundWon: Int?
    @Published var correctAnswer: [Int] = [1,2,3,4]
    @Published var actualRound: Int = 0
    
    @Published var firstCorrect: Results = .wrong
    @Published var secondCorrect: Results = .wrong
    @Published var thridCorrect: Results = .wrong
    @Published var fourthCorrect: Results = .wrong
    
    @Published var rounds: [Int] = []
    @Published var overlay: [Results] = []
    
    init(didWin: Bool){
        print("init game")
        self.didWin = didWin
        self.correctAnswer = generateAnswer()
    }
    
    func generateAnswer() -> [Int] {
        var answer:[Int] = []
        
        for _ in 1...4{
            answer.append(Int.random(in: 1..<7))
        }
        
        print(answer)
        return answer
    }
}
