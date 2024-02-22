import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
    let string = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
    let stringArray = string.components(separatedBy: [" ", "\n"]).filter { $0 != "" }
    var intersection: Set<String> = .init()
    var union: Set<String> = .init()
    guard let numberOfPupils = Int(stringArray[0]) else { fatalError() }
    var i = 0
    var index = 1

    repeat {
        guard let languagesCount = Int(stringArray[index]) else { fatalError() }
        
        var localSet: Set<String> = .init()
        for j in 1...languagesCount {
            localSet.insert(stringArray[index+j])
        }

        if i == 0 {
            intersection = localSet
            union = localSet
        } else {
            intersection.formIntersection(localSet)
            union.formUnion(localSet)
        }
        
        index = index + 1 + languagesCount
        i += 1
    } while i != numberOfPupils
    
    print(intersection.count)
    print(intersection.joined(separator: "\n"))
    print(union.count)
    print(union.joined(separator: "\n"))
}
