import Cocoa

class Album {
    var streams = 0 {
        didSet {
//            print("Number of streams: \(streams)")
        }
    }
}

var album = Album()
album.streams += 10

class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work () {
        print("I'm writing code for \(hours) hours")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

/* mark child class as final to stop inheritance from other classes
 but child class can still inherit from other classes
 
 final class Manager: Employee {}
*/
class Manager: Employee {
    func work() {
        print("I'm working for \(hours) hours")
    }
}

let michael = Developer(hours: 6)
let jack = Manager(hours: 6)
let piyush = Manager(hours: 8)
michael.work()
jack.work()
piyush.printSummary()

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let tesla = Car(isElectric: true, isConvertible: false)

class Artist {
    var name = "travis scott"
    
    func copy() -> Artist {
        let artist = Artist()
        artist.name = name
        return artist
    }
}

var artist1 = Artist()
var artist2 = artist1.copy()

artist2.name =  "the weeknd"

print(artist1.name)
print(artist2.name)

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

class Player {
    var name = "Scorpion"
}

var player =  Player()
player.name = "Kenshi"
player = Player()
print(player.name)
