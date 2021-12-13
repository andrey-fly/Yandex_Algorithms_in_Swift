import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func checkPrintingTime(time: Int, params: (n: Int, x: Int, y: Int)) -> Bool {
    return (time / params.x + time / params.y) >= params.n - 1
}

func minPrintingTime(params: (n: Int, x: Int, y: Int)) -> Int {
    
    var totatTime = 0
    let minPrinterTime = min(params.x, params.y)
    
    if params.n == 1 {
        totatTime = minPrinterTime
    } else {
        
        var l = 0
        var r = params.n * max(params.x, params.y)
        
        while l < r {
            let m = (l + r) / 2
            if checkPrintingTime(time: m, params: params) {
                r = m
            } else {
                l = m + 1
            }
        }
        totatTime = l + minPrinterTime
    }
    
    return totatTime
}

let printerArray = readLine()!.split(separator: " ").map { Int($0)! }
let params = (printerArray[0], printerArray[1], printerArray[2])
print(minPrintingTime(params: params))
