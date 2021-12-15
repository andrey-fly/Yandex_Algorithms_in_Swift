import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func checkTileCount(w: Int, n: Int, m: Int, t: Int) -> Bool {
    return 2 * w * (n + m - 2 * w) <= t && 2 * w <= min(n, m)
    
}

func squareBinarySerch(n: Int, m: Int, t: Int) -> Int {
    
    var l = 0
    var r = max(n, m)
    
    while l < r {
        let mid = (l + r + 1) / 2
        if checkTileCount(w: mid, n: n, m: m, t: t) {
            l = mid
        } else {
            r = mid - 1
        }
    }
    
    return l
}

let n = Int(readLine()!)!
let m = Int(readLine()!)!
let t = Int(readLine()!)!
print(squareBinarySerch(n: n, m: m, t: t))

