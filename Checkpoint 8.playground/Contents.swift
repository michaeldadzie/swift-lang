import Cocoa

protocol Building {
    var numOfRooms: Int { get }
    var cost: Int { get }
    var agentName: String { get }
    func salesSummary()
}

struct House: Building {
    let agentName: String
    let numOfRooms: Int
    let cost: Int
    
    func salesSummary() {
        print("This is a house with \(numOfRooms) rooms and costs GHc\(cost) is being sold by \(agentName)")
    }
}

struct Office: Building {
    let agentName: String
    let numOfRooms: Int
    let cost: Int
    
    func salesSummary() {
        print("This is an office with \(numOfRooms) rooms and costs GHc\(cost) is being sold by \(agentName)")
    }
}

func getSalesSummary(using building: [Building]) {
    for building in building {
        building.salesSummary()
    }
}

let house = House(agentName: "Soulll Realtors", numOfRooms: 4, cost: 2_500_000)
let office = Office(agentName: "Soulll Realtors", numOfRooms: 10, cost: 9_000_000)

getSalesSummary(using: [house, office])
