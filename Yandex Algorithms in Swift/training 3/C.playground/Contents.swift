import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func cubesSolution(anyaSet a: Set<Int>, vasyaSet v: Set<Int>) -> [[String]] {
    let solution = [
        a.intersection(v),
        a.subtracting(v),
        v.subtracting(a)
    ].map { $0.sorted().map { String($0) } }
    return solution
}

let cubesAmounts = readLine()!.split(separator: " ").map { Int($0)! }
let n = cubesAmounts[0]
let m = cubesAmounts[1]
var anyaCubes: Set<Int> = []
var vasyaCubes: Set<Int> = []

for _ in 0..<n {
    anyaCubes.insert(Int(readLine()!)!)
}
for _ in 0..<m {
    vasyaCubes.insert(Int(readLine()!)!)
}

let cubesAnswer = cubesSolution(anyaSet: anyaCubes, vasyaSet: vasyaCubes)

for i in 0...2 {
    print(cubesAnswer[i].count)
    print(cubesAnswer[i].joined(separator: " "))
}
