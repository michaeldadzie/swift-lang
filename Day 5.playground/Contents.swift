import Cocoa

let score = 85

if score < 70 {
    print("Well done")
}


let ourName = "Michael Dadzie"
let friendName = "Mawuena Trebarh"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "England"

if country !=  "Ghana" {
    print("Akwaba")
}

var username = "michaeldadzie"

// quite inefficient, swift counts characters individually
//if username.count == 0 {

if username.isEmpty == true {
    username = "Anonymous"
}


let age = 16

if age >=  18{
    print("You can vote in the next election")
} else {
    print("Sorry, your're too young to vote")
}

let temp = 25
// they always confuse me
// > greater than
// < less than
if temp > 20 && temp < 30 {
    print("It's a nice day")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent {
    print("You can buy the game")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.escooter

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path")
} else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'm going to hire a scooter now!")
}


enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forecast generator is broken")
}

let city = "Central City"

switch city {
case "Central City":
    print("You're the flash")
    fallthrough
case "Metropolis":
    print("You're superman")
    fallthrough
default:
    print("Who are you?")
}

let count = 18
print(count >= 18 ? "Yes" : "No")

let people = ["Mike", "Lisa", "Miriam"]
let crewCount = people.isEmpty ? "No one" : "\(people.count) people"
print(crewCount)

enum Theme {
    case light, dark
}
let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)
