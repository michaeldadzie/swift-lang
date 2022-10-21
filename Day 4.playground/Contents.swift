import Cocoa

//type annotations

let playerName: String = "Draco Malfoy"
let luckyNumber: Int = 14
let pi: Double = 3.141
let isAuth: Bool = true
var albums: [String] = ["Rodeo", "MBDTF"]
var user: [String: String] = ["id": "@michaeldadzie"]
var books: Set<String> = Set ([
    "Great Expectations",
    "Oliver Twist",
])

var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = UIStyle.light

style = .dark


let username: String
// some logic in app say user fills a form
username = "michaeldadzie"
// lots more logic
print(username)
