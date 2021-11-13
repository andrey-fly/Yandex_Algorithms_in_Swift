import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func checkArray(array: [Int]) -> (const: Bool, asc: Bool, ascWeak: Bool, desc: Bool, descWeak: Bool) {
    var const = true
    var asc = true
    var ascWeak = true
    var desc = true
    var descWeak = true
    
    for i in 1..<array.count {
        const = const && array[i-1] == array[i]
        asc = asc && array[i-1] < array[i]
        ascWeak = ascWeak && array[i-1] <= array[i]
        desc = desc && array[i-1] > array[i]
        descWeak = descWeak && array[i-1] >= array[i]
    }
    return (const, asc, ascWeak, desc, descWeak)
}

var array: [Int] = []
while true {
    let item = Int(readLine()!)!
    if item == -2000000000 {
        break
    } else {
        array.append(item)
    }
}

let answerTuple = checkArray(array: array)

if answerTuple.const {
    print("CONSTANT")
} else if answerTuple.asc {
    print("ASCENDING")
} else if answerTuple.ascWeak {
    print("WEAKLY ASCENDING")
} else if answerTuple.desc {
    print("DESCENDING")
} else if answerTuple.descWeak {
    print("WEAKLY DESCENDING")
} else {
    print("RANDOM")
}
