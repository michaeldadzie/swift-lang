import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("James")
//print(beatles[2])

var scores = Array<Int>()
scores.append(2)
scores.append(4)
scores.append(6)
//print(scores[1])

// this
//var albums = Array<String>()

// or

// that
var albums = [String]()
albums.append("CONFIRMED")
albums.append("ASTROWORLD")
albums.append("RODEO")
albums.append("MBDTF")
print(albums)
print(albums.count)
print(albums.sorted())
print(albums.contains("ASTROWORLD"))

//albums.remove(at: 1)
//print(albums.count)
//
//albums.removeAll()
let reversedAlbums = albums.reversed()
print(albums.count)
print(reversedAlbums)

let employee = [
    "name": "Michael Dadzie",
    "job": "iOS Developer",
    "location": "Soulll Park"
]
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

let hasGraduated = [
    "Samed": false,
    "Michael": true,
    "Glenn": false
]

print(hasGraduated["Samed", default: true])
print(hasGraduated["Michael", default: true])
print(hasGraduated["Glenn", default: true])


var olympics = [Int: String]()
olympics[2012] = "London"
olympics[2016] = "Rio de Janerio"
olympics[2021] = "Tokyo"

print(olympics[2012, default: "Unknown"])

var actors = Set<String>()
//var actors = Set([
//    "Denzel Washington",
//    "Tom Cruise",
//    "Nicolas Cage",
//    "Samuel L Jackson"
//])
actors.insert("Steve Harvey")
actors.insert("Tom Cruise")
actors.insert("Denzel Washington")
actors.insert("Nicolas Cage")
actors.insert("Samuel L Jackson")
print(actors)

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
}

var day = Weekday.monday
day = .friday

print(day)
