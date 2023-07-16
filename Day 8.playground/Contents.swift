import UIKit

func timesTable(number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

timesTable(number: 5)

var characters = ["UTOPIA", "BIRDS", "ASTROWORLD", "RODEO"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {throw PasswordError.short}
    if password == "12345" {throw PasswordError.obvious}
    
    if password.count < 8 {
        return "Seem OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Good"
    }
}

let string = "12345"

do {
    let result =  try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage")
}
catch {
    print("There was an error \(error.localizedDescription)")
}
