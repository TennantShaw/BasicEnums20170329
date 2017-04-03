enum Color {
    case red
    case yellow
    case blue
    case green
    case purple
    case orange
}

var primaryComplementColors = Color.red

func complement (Color: Color) {
    switch primaryComplementColors {
    case .red:
        print("Green!")
    case .yellow:
        print("Purple!")
    case .blue:
        print("Orange!")
    case .green:
        print("Red!")
    case .purple:
        print("Yellow!")
    case .orange:
        print("Blue")
    }
}

complement(Color: .red)
complement(Color: .yellow)
/*
 complement(Color: "yellow")
 complement(Color: "blue")
 complement(Color: "green")
 complement(Color: "purple")
 complement(Color: "orange")
 */

enum Instruction {
    case left(Int)
    case right(Int)
}

let turnLeft = Instruction.left(9)
let turnRight = Instruction.right(0)

func printInstruction (direction: Instruction) {
    switch turnLeft {
    case .left(9):
        print("turn left and take 9 steps")
    case .right(0):
        print("Turn right")
    default:
        print("")
    }
}

printInstruction(direction: .left(9))

/*printInstruction(.left(9)) == "turn left and take 9 steps"
 printInstruction(.right(0)) == "turn right"
 printInstruction(.right(1)) == "turn right and take 1 step"
 */
