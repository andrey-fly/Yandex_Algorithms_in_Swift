import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func tableSize(sizes: [Int]) -> (Int, Int) {
    var squaresDict: [Int:(Int, Int)] = [:]
    let a1 = sizes[0]
    let b1 = sizes[1]
    let a2 = sizes[2]
    let b2 = sizes[3]
    squaresDict[(a1 + a2) * max(b1, b2)] = ((a1 + a2), max(b1, b2))
    squaresDict[(a1 + b2) * max(b1, a2)] = ((a1 + b2), max(b1, a2))
    squaresDict[(b1 + a2) * max(a1, b2)] = ((b1 + a2), max(a1, b2))
    squaresDict[(b1 + b2) * max(a1, a2)] = ((b1 + b2), max(a1, a2))
    let minSquare = Array(squaresDict.keys).min()!
    return squaresDict[minSquare]!
}

let sizesArray = readLine()!.split(separator: " ").map {
        Int($0)!
    }

let answerSizes = tableSize(sizes: sizesArray)
print(answerSizes.0, answerSizes.1)

