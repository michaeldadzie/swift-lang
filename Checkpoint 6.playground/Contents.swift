import Cocoa

struct Car {
    let model: String
    let seatCount: Int
    private(set) var currentGear: Int = 1
    
    init(model: String, seatCount: Int) {
        self.model = model
        self.seatCount = seatCount
    }
    
    mutating func changeGear(up: Bool) {
        let newGear = up ? currentGear + 1 : currentGear - 1
        if newGear >= 1 && newGear <= 10 {
            currentGear = newGear
        } else {
            print("Cannot change gear")
        }
    }
}

// Example usage:
var myCar = Car(model: "R172 SLK-Class", seatCount: 5)
print("Car model: \(myCar.model), Seats: \(myCar.seatCount), Current Gear: \(myCar.currentGear)")

myCar.changeGear(up: true)
print("Changed gear up: \(myCar.currentGear)")

myCar.changeGear(up: false)
print("Changed gear down: \(myCar.currentGear)")
