import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func averageCondition(two: Int, three: Int, four: Int, five: Int) -> Bool {
    return 10 * (two * 2 + three * 3 + four * 4 + five * 5) >= 35 * (two + three + four + five)
}

func fiveAmountNecessary(two: Int, three: Int, four: Int) -> Int {
    var l = 0
    var r = two + three + four
    
    while l < r {
        let m = (l + r) / 2
        if averageCondition(two: two, three: three, four: four, five: m) {
            r = m
        } else {
            l = m + 1
        }
    }
    
    return l
}

let twoAmount = Int(readLine()!)!
let threeAmount = Int(readLine()!)!
let fourAmount = Int(readLine()!)!
print(fiveAmountNecessary(two: twoAmount, three: threeAmount, four: fourAmount))
