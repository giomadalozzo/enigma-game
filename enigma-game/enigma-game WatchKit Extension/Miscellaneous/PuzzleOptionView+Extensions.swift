extension PuzzleOptionView  {
    mutating func getColorSymbol(type: Int) {
        switch type{
        case 1:
            self.circleColor = .orange
            self.symbol = "moon.fill"
            return
        case 2:
            self.circleColor = .blue
            self.symbol = "star.fill"
            return
        case 3:
            self.circleColor = .red
            self.symbol = "heart.fill"
            return
        case 4:
            self.circleColor = .purple
            self.symbol = "sun.max.fill"
        case 5:
            self.circleColor = .indigo
            self.symbol = "bolt.fill"
        case 6:
            self.circleColor = .brown
            self.symbol = "cloud.fill"
        default:
            self.circleColor = .black
            self.symbol = "star"
            return
        }
    }
}
