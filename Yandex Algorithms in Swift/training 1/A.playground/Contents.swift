import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let conditionsArray = readLine()!.split(separator: " ").map {
        Int($0)!
    }
let tRoom = conditionsArray[0]
let tCond = conditionsArray[1]
let mode = readLine()!

if (mode == "heat" && tRoom <= tCond) || (mode == "freeze" && tRoom >= tCond) || mode == "auto" {
    print(tCond)
} else if (mode == "heat" && tRoom > tCond) || (mode == "freeze" && tRoom <  tCond) || mode == "fan" {
    print(tRoom)
}
