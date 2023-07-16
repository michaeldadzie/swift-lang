import Cocoa

enum SqrtError: Error {
    case out
    case notPerfect
}

func squareRoot(number: Double) -> Double {
    var guess = number / 2.0
    let accuracy = 0.0001
    
    while abs(guess * guess - number) > accuracy {
        guess = (guess + number / guess) / 2.0
    }
    
    return guess
}


func findSqrt(limit: Int) throws -> String {
    var global = ""
    if limit < 1 {throw SqrtError.out}
    if limit > 10000 {throw SqrtError.out}
    
    for i in 1...limit {
        
        let integer = Double(i)
        let result = squareRoot(number: integer)
        let root = Int(result)
        
//        print("Integer square root of \(i): \(root)\n")
        
        if root * root ==  i {
            global += "\(i) "
        } else {
            throw SqrtError.notPerfect
        }
    }
    return global
}


do {
    let integer = 500
    let result = try findSqrt(limit: integer)
    print("Square root: \(result)")
} catch SqrtError.out {
    print("Out of bounds")
} catch SqrtError.notPerfect {
    print("No root")
}



