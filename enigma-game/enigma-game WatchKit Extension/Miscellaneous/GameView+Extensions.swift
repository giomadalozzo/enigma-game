extension GameView {
    func generateAnswer() -> [Int] {
        var answer:[Int] = []
        
        for _ in 1...4{
            answer.append(Int.random(in: 1..<7))
        }
        
        return answer
    }
    
    func checkResult(game: Game){
        
        //CHECAGEM RESULTADO
        let chosenOptions: [Int] = [game.selectedFirst ?? 1, game.selectedSecond ?? 1, game.selectedThird ?? 1, game.selectedFourth ?? 1]
        
        if chosenOptions == game.correctAnswer {
            game.didWin = true
            print("ganhou")
        }else{
            game.didWin = false
            print("perdeu")
        }
    }
}
