import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let a = Float(readLine()!)!
let b = Float(readLine()!)!
let c = Float(readLine()!)!
let d = Float(readLine()!)!
let e = Float(readLine()!)!
let f = Float(readLine()!)!

let mainDet = a * d - b * c
let detX = e * d - b * f
let detY = a * f - c * e

if a == 0 && b == 0 && c == 0 && d == 0 && e == 0 && f == 0 {
    print(5)
} else if mainDet == 0 && (detX != 0 || detY != 0) {
    print(0)
} else if a == 0 && c == 0 && detX != 0 {
    print(0)
} else if b == 0 && d == 0 && detY != 0 {
    print(0)
} else if a == 0 && b == 0 && e != 0 {
    print(0)
} else if c == 0 && d == 0 && f != 0 {
    print(0)
} else if mainDet == 0 && (detX == 0 || detY == 0) {
    if b == 0 && d == 0 {
        if a != 0 {
            print(3, e / a)
        } else if c != 0 {
            print(3, f / c)
        }
    } else if a == 0 && c == 0 {
        if b != 0 {
            print(4, e / b)
        } else if d != 0 {
            print(4, f / d)
        }
    } else if b != 0 {
        print(1, -a / b, e / b)
    } else if d != 0 {
        print(1, -c / d, f / d)
    }
} else {
    print(2, detX / mainDet, detY / mainDet)
}
