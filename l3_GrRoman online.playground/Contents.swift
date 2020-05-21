import UIKit

var russianCurrency: String = "Rouble"
var dollarCurrency: String = "Dollar"
var euro: String = "Euro"

var currency = ["Rouble", "Dollar", "Euro"]

enum currency_enum: String {
    case Rouble
    case Dollar = "$"
    case Euro
}

print(currency_enum.Dollar.rawValue)

var rouble: currency_enum = .Rouble
var evro = currency_enum.Euro

enum Direction: String {
    case left = "to left"
    case right = "to right"
}

enum Action {
    case Walk (meters: Int)
    case Run (meters: Int, speed: Int)
    case Stop
    case Turn(direction: Direction)
    
    //    enum action2 {
    //        case play
    //        case fly
    //        case jump
    //    }
}

var action = Action.Run(meters: 10, speed: 2)
action = .Stop
action = .Walk(meters: 200)
action = .Run(meters: 500, speed: 8)
action = .Turn(direction: .left)

switch action {
case .Stop:
    print("Stop")
case .Walk(let meters) where meters < 100:
    print("Short walk")
case .Walk:
    print("Long walk")
case .Run(let meters, let speed):
    print("Running \(meters) with speed \(speed)")
case .Turn(let direction) where direction == .right:
    print("Turn \(direction.rawValue)")
default:
    print("Unknow")
}


//var action2 = Action.action2.fly
//action2 = .play
//action2 = .jump

struct playerInChess {
    var name: String = " "
    var wins: Int = 0

    func description() {
        print("Player \(name) is win \(wins) game")
    }

    mutating func addWins(countOfWins: Int) {
        self.wins += countOfWins
    }

    init(namePlayer: String, winPlayer: Int) {
        self.name = namePlayer
        self.wins = winPlayer
    }
}

var oleg = playerInChess(namePlayer: "Oleg", winPlayer: 10)

var maksim = playerInChess(namePlayer: "Max", winPlayer: 5)

print(oleg)
print(maksim)

if oleg.wins < maksim.wins {
    print("Max best")
} else {
    print("Oleg best")
}

maksim.description()
maksim.addWins(countOfWins: 3)
maksim.description()

var alex = oleg
print(alex.name)

alex.name = "Alex"

alex.description()

