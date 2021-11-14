import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func numOfVariations(distances: [Int], maxDist: Int) -> Int {
    var result = 0
    var r = 1
    
    for l in 0..<distances.count {
        while r < distances.count  && distances[r] - distances[l] <= maxDist {
            r += 1
        }
        result += distances.count - r
    }
    return result
}

let NRArray = readLine()!.split(separator: " ").map { Int($0)! }
let maxDist = NRArray[1]

let distances = readLine()!.split(separator: " ").map { Int($0)! }

print(numOfVariations(distances: distances, maxDist: maxDist))
