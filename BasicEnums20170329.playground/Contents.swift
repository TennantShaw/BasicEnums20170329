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



// reference enum references in slack to compare work and complete logic
enum Instruction {
    case left(Int)
    case right(Int)
}

func printInstruction (direction: Instruction) -> String {
    switch direction {
    case .left(0):
        return("turn left")
    case .right(0):
        return("turn right")
    case .left(let count):
        return("turn left and take \(count) steps")
    case .right(let count):
        return("turn right and take \(count) step")
    }
}

printInstruction(direction: .left(9)) == "turn left and take 9 steps"
printInstruction(direction: .right(0)) == "turn right"
printInstruction(direction: .right(1)) == "turn right and take 1 step"



