enum Color {
    case red
    case yellow
    case blue
    case green
    case purple
    case orange
}


func complement (color: Color) -> Color {
    switch color {
    case .red:
        return(Color.green)
    case .yellow:
        return(Color.purple)
    case .blue:
        return(Color.orange)
    case .green:
        return(Color.red)
    case .purple:
        return(Color.yellow)
    case .orange:
        return(Color.blue)
    }
}

complement(color: .red) == .green
complement(color: .yellow) == .purple
complement(color: .blue) == .orange
complement(color: .green) == .red
complement(color: .purple) == .yellow
complement(color: .orange) == .blue


enum Instruction {
    case left
    case right
}

func printInstruction (direction: Instruction, movementAmount: Int) -> String {
    switch (direction, movementAmount) {
    case (.left, 9):
        return("turn \(direction) and take \(movementAmount) steps")
    case (.right, 0):
        return("turn \(direction)")
    case (.right, 1):
        return("turn \(direction) and take \(movementAmount) step")
    default:
        return ("")
    }
}

printInstruction(direction: .left, movementAmount: 9) == "turn left and take 9 steps"
printInstruction(direction:  .right, movementAmount: 0) == "turn right"
printInstruction(direction: .right, movementAmount: 1) == "turn right and take 1 step"
