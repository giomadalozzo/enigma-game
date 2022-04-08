extension GameView {
    func generateAnswer() -> [Int] {
        var answer:[Int] = []
        
        for _ in 1...4{
            answer.append(Int.random(in: 1..<7))
        }
        
        print(answer)
        return answer
    }
    
    func checkResult(game: Game) -> Bool{
        
        //CHECAGEM RESULTADO
        let chosenOptions: [Int] = [game.selectedFirst ?? 1, game.selectedSecond ?? 1, game.selectedThird ?? 1, game.selectedFourth ?? 1]
        
        game.rounds.append(game.selectedFirst ?? 1)
        game.rounds.append(game.selectedSecond ?? 1)
        game.rounds.append(game.selectedThird ?? 1)
        game.rounds.append(game.selectedFourth ?? 1)
        
        for i in 0...3 {
            if chosenOptions[i] == game.correctAnswer[i] {
                switch i {
                case 0:
                    game.firstCorrect = .correct
                case 1:
                    game.secondCorrect = .correct
                case 2:
                    game.thridCorrect = .correct
                case 3:
                    game.fourthCorrect = .correct
                default:
                    print("ERROR")
                }
            }else if game.correctAnswer.contains(chosenOptions[i]){
                switch i {
                case 0:
                    game.firstCorrect = .contains
                case 1:
                    game.secondCorrect = .contains
                case 2:
                    game.thridCorrect = .contains
                case 3:
                    game.fourthCorrect = .contains
                default:
                    print("ERROR")
                }
            }else{
                switch i {
                case 0:
                    game.firstCorrect = .wrong
                case 1:
                    game.secondCorrect = .wrong
                case 2:
                    game.thridCorrect = .wrong
                case 3:
                    game.fourthCorrect = .wrong
                default:
                    print("ERROR")
                }
            }
        }
        
        game.overlay.append(game.firstCorrect)
        game.overlay.append(game.secondCorrect)
        game.overlay.append(game.thridCorrect)
        game.overlay.append(game.fourthCorrect)
        
        if chosenOptions == game.correctAnswer {
            game.didWin = true
            print("ganhou")
            return true
        }else{
            game.didWin = false
            print("perdeu")
            return false
        }
    }
}
