import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func biggerThanN(amount: Int, params: (w: Int, h: Int, n: Int)) -> Bool {
    return params.n <= (amount / params.h) * (amount / params.w)
}

func diplomasBinarySearch(params: (w: Int, h: Int, n: Int)) -> Int {
    
    var l = 0
    var r = max(params.h, params.w) * params.n
    
    while l < r {
        let m = (l + r) / 2
        if biggerThanN(amount: m, params: params) {
            r = m
        } else {
            l = m + 1
        }
    }
    
    return l
}

let valueArray = readLine()!.split(separator: " ").map { Int($0)! }
let params = (valueArray[0], valueArray[1], valueArray[2])
print(diplomasBinarySearch(params: params))
