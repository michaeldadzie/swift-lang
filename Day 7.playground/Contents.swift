import Cocoa

func showWelcome() {
    print("Welcome Afrobeezy")
    print("Start your swift journey")
}


func timesTable(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

//showWelcome()
//timesTable(number: 13, end: 2)

func rollDice() -> Int {
    Int.random(in: 1...6)
}
let result =  rollDice()
//print(result)

func compareStrings(name1: String, name2: String) -> Bool {
// my approach
//    if (name1.sorted() == name2.sorted()) {
//        return true
//    }
//    else {
//        return false
//    }
    name1.sorted() == name2.sorted()
}

let compareResult = compareStrings(name1: "MIKE", name2: "EKIM")
//print(compareResult)

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
//print(c)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Michael", lastName: "Dadzie")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

func getUser2() -> (String, String) {
    ("Michael", "Dadzie")
}

let user2 = getUser2()
print("Name: \(user2.0) \(user2.1)")

func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Michael", lastName: "Dadzie")
}
// Destructuring

//let (firstName, lastName) = getUser()
//print("Name: \(firstName) \(lastName)")

let (firstName, _) = getUser()
print("Name: \(firstName)")

//internal and exteral names for customizing parameter labels
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let response = isUppercase("HI")
print(response)
