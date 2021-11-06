import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func styleSolution(tShirts tsh: [Int], trousers trs: [Int]) -> (Int, Int) {
    var i = 0
    var j = 0
    var iBest = 0
    var jBest = 0
    var bestResult = Int.max
    
    while i < tsh.count && j < trs.count {
        if tsh[i] == trs[j] {
            return (tsh[i], trs[j])
        }
        
        let result = abs(trs[j] - tsh[i])
        if result < bestResult {
            iBest  = i
            jBest = j
            bestResult = result
        }
        
        if tsh[i] > trs[j] {
            j += 1
        } else {
            i += 1
        }
        
    }
    return (tsh[iBest], trs[jBest])
}

_ = readLine()
let tShirtsArray = readLine()!.split(separator: " ").map { Int($0)! }
_ = readLine()
let trousersArray = readLine()!.split(separator: " ").map { Int($0)! }
let result = styleSolution(tShirts: tShirtsArray, trousers: trousersArray)
print(result.0, result.1)
