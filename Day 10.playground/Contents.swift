import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}


let utopia = Album(title: "Utopia", artist: "Travis Scott", year: 2023)

print(utopia.artist)
utopia.printSummary()

//struct Employee {
//    //Properties
//    let name: String
//    var vacationRemaining: Int
//
//    //Methods
//    mutating func takeVacation(days: Int) {
//        if vacationRemaining > days {
//            vacationRemaining -= days
//            print("I'm going on vacation!")
//            print("Days remaining: \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
//}
//
////Instance
//var jacques =  Employee(name: "Jacques Webster", vacationRemaining: 17) //Initializer
//jacques.takeVacation(days: 4)
//print(jacques.vacationRemaining)

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var travis = Employee(name: "Travis Scott", vacationAllocated: 20)
travis.vacationTaken += 5
travis.vacationRemaining = 5
print(travis.vacationAllocated)

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct Songs {
    var songs = [String]() {
        willSet {
//            print("Current value is: \(songs)")
//            print("New value will be: \(newValue)")
        }

        didSet {
//            print("There are now \(songs.count) songs.")
//            print("Old value was \(oldValue)")
        }
    }
}

var app = Songs()
app.songs.append("STARGAZING")
app.songs.append("ASTROTHUNDER")
app.songs.append("COFFEE BEAN")

struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "JACQUES")
print(player.number)
