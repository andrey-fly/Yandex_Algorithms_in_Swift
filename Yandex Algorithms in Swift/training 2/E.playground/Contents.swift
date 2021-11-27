import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func maxValueID(dists: [Int], n: Int) -> Int {
    var maxValue = 0
    var maxID = -1
    for i in stride(from: n - 1, through: 0, by: -1) {
        if dists[i] >= maxValue {
            maxValue = dists[i]
            maxID = i
        }
    }
    return maxID
}

func place(dists: [Int], n: Int) -> Int {
    let maxID = maxValueID(dists: dists, n: n)
    var vasyaDist = 0
    for i in stride(from: 1, through: n - 2, by: 1) {
        if dists[i] % 10 == 5 && i > maxID && dists[i] > dists[i + 1] {
            if vasyaDist < dists[i] {
                vasyaDist = dists[i]
            }
        }
    }
    guard vasyaDist == 0 else { return dists.filter { $0 > vasyaDist }.count + 1 }
    return vasyaDist
}

let n = Int(readLine()!)!
let dists = readLine()!.split(separator: " ").map { Int($0)! }
print(place(dists: dists, n: n))
