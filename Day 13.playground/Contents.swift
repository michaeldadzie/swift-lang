import Cocoa

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name =  "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    let name =  "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

//let car = Car()
//commute(distance: 1000000, using: car)
//
//let bike = Bicycle()
//commute(distance: 150, using: bike)

//getTravelEstimates(using: [car, bike], distance: 150)


func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}


func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self =  self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote = "  I hop in the coupe go insane  "
let trimmed = quote.trimmingCharacters(in: .whitespaces)
quote.trim()

let lyrics = """
This could never work
is what we said at first
but whatever this is it's working
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let numOfPages: Int
    let readingHours: Int
}

extension Book {
    init(title: String, numOfPages: Int) {
        self.title = title
        self.numOfPages = numOfPages
        self.readingHours = numOfPages / 50
    }
}

let hp = Book(title: "Harry Potter and the Prisoner of Azkaban", numOfPages: 1190, readingHours: 26)
