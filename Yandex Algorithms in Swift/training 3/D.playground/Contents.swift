import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
    let string = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
    let stringArray = string.components(separatedBy: [" ", "\n"]).filter { $0 != "" }
    print(Set(stringArray).count)
}



