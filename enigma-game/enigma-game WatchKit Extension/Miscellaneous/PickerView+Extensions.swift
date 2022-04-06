extension PickerView {
    func getSelected(selected: Int) {
        
        let optionSelected = selected
        
        switch self.position {
        case 1:
            self.game.selectedFirst = optionSelected
        case 2:
            self.game.selectedSecond = optionSelected
        case 3:
            self.game.selectedThird = optionSelected
        case 4:
            self.game.selectedFourth = optionSelected
        default:
            return
        }
    }

}
