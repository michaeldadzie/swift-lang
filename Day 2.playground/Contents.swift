import Cocoa

// booleans and string interpolation

var isAuth = true
isAuth = !isAuth
//print(isAuth)

var gameOver = true
//print(gameOver)
gameOver.toggle()
//print(gameOver)

let message = "Welcome! "
let name = "Jack"

var new = message + name
//print(new)

let user = "Afrobeezy"
let level = 22
let announce = "Hey there \(user)! you just got to level \(level)"

//print(announce)
//
//print("5 / 2 = \(6 / 2)")

let result =  false

if (result == true) {
    print("Batman")
} else {
    print("Superman")
}

//print("today's date is: \(Date())")
