import Cocoa

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
// shadow technique
if let number = number {
    print(square(number: number))
}


// use guard to make sure optionals have somthing inside of them
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: nil)

struct Album {
    let artist: String
    let name: String?
}

let album = Album(artist: "Travis Scott", name: nil)
let name = album.name ?? "Utopia"
print(name)

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")


struct Book {
    let author: String?
    let title: String
}

var book: Book? =  nil
let author = book?.author?.first?.uppercased() ?? "G"
print(author)

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}


if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 2)) ?? "Anon"
print(user)
