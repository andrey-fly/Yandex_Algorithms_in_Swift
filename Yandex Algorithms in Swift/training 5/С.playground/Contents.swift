import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func tourismSolution(points: [[Int]], tracks: [[Int]]) {
    var prefixSumLeftToRight: [Int?] = [0] + Array(repeating: nil, count: points.count - 1)
    var prefixSumRightToLeft: [Int?] = Array(repeating: nil, count: points.count - 1) + [0]

    for i in 1..<points.count {
        prefixSumLeftToRight[i] = prefixSumLeftToRight[i - 1]! + max(points[i][1] - points[i - 1][1], 0)
        prefixSumRightToLeft[points.count - i - 1] = prefixSumRightToLeft[points.count - i]! + max(points[points.count - i - 1][1] - points[points.count - i][1], 0)
    }
    
    for track in tracks {
        if track[1] > track[0] {
            print(prefixSumLeftToRight[track[1] - 1]! - prefixSumLeftToRight[track[0] - 1]!)
        } else {
            print(prefixSumRightToLeft[track[1] - 1]! - prefixSumRightToLeft[track[0] - 1]!)
        }
    }
}

let n = Int(readLine()!)!
var points: [[Int]] = []
for _ in 0..<n {
    let point = readLine()!.split(separator: " ").map { Int($0)! }
    points.append(point)
}

let m = Int(readLine()!)!
var tracks: [[Int]] = []
for _ in 0..<m {
    let track = readLine()!.split(separator: " ").map { Int($0)! }
    tracks.append(track)
}

tourismSolution(points: points, tracks: tracks)
