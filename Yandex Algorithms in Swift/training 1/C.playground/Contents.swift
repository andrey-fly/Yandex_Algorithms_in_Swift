import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let baseCode = "495"

func parsePhone(phone: String) -> String {
    let phoneArrayOnlyNumbers = Array(phone).filter { $0.isNumber }
    if phoneArrayOnlyNumbers.count == 7 {
        return baseCode + phoneArrayOnlyNumbers
    } else {
        return String(phoneArrayOnlyNumbers[1...10])
    }
}

let phoneVasya = parsePhone(phone: readLine()!)
let phoneBook = [readLine()!, readLine()!, readLine()!]

for phone in phoneBook {
    if phoneVasya == parsePhone(phone: phone) {
        print("YES")
    } else {
        print("NO")
    }
}


