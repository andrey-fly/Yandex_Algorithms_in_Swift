import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let firstGenomeString = readLine()!
let secondGenomeString = readLine()!

var secondGenome: Set<Substring> = .init()
var similarity = 0

var start = secondGenomeString.startIndex
var end: String.Index

for i in 0..<secondGenomeString.count - 1 {
    end = secondGenomeString.index(after: start)
    secondGenome.insert(secondGenomeString[start...end])
    start = end
}

start = firstGenomeString.startIndex

for i in 0..<firstGenomeString.count - 1 {
    end = firstGenomeString.index(after: start)
    if secondGenome.contains(firstGenomeString[start...end]) {
        similarity += 1
    }
    start = end
}

print(similarity)
