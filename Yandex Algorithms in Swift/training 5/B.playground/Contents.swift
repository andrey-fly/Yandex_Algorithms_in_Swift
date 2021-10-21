import Cocoa
import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let numberSumArray = readLine()!.split(separator: " ").map {
        Int($0)!
    }
    let k = numberSumArray[1]
    let carsArray = readLine()!.split(separator: " ").map {
        Int($0)!
    }
    
    var left = 0
    var result = 0
    var sumCars = 0
    
    for num in carsArray {
        sumCars += num
        while sumCars > k {
            sumCars -= carsArray[left]
            left += 1
        }
        if sumCars == k {
            result += 1
        }
    }
    print(result)
