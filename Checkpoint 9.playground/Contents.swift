import Cocoa

func getRndInt(array: [Int]?) -> Int {
    return array?.randomElement() ?? Int.random(in: 1...10)
}

let numbers = [2, 10, 20, 25, 56]
print(getRndInt(array: nil))

