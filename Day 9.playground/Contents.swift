import Cocoa

func greetUser() {
    print("Hello, World")
}

var greetCopy = greetUser
greetCopy()
 
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello("UTOPIA")

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

        
let data: (Int) -> String = getUserData
let user = data (1981)
print (user)

let albums = ["UTOPIA", "ASTROWORLD", "BIRDS", "RODEO"]
let sorted = albums.sorted()
print(sorted)

func bestAlbum(album1: String, album2: String) -> Bool {
    if album1 == "UTOPIA" {
        return true
    } else if album2 == "UTOPIA" {
        return false
    }
    return album1 < album2
}

//let bestAlbumInDisco = albums.sorted(by: bestAlbum)
//print(bestAlbumInDisco)

let bestAlbumInDisco = albums.sorted(by: {(album1: String, album2: String) -> Bool in
    if album1 == "UTOPIA" {
        return true
    } else if album2 == "UTOPIA" {
        return false
    }
    return album1 < album2
})


let bestAlbumInDiscography = albums.sorted {
    if $0 == "UTOPIA" {
        return true
    } else if $1 == "UTOPIA" {
        return false
    }
    return $0 < $1
}

print(bestAlbumInDiscography)

let reverseDisco =  albums.sorted {$0 > $1}

let fOnly = albums.filter {$0.hasPrefix("U")}

let smallCaps = albums.map {$0.lowercased()}

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
//        print(numbers)
    }
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
