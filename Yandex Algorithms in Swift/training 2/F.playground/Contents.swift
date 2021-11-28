import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func simmetricSequence(seq: [Int]) -> [Int] {
    for start in 0..<seq.count {
        var i = start
        var j = seq.count - 1
        while i < seq.count && j >= 0 && seq[i] == seq[j] && i <= j {
            i += 1
            j -= 1
        }
        if i > j {
            var ans = [Int]()
            for i in stride(from: start - 1, through: 0, by: -1) {
                ans.append(seq[i])
            }
            return ans
        }
    }
    return []
}

_ = readLine()
let seq = readLine()!.split(separator: " ").map { Int($0)! }
let answerSimmetric = simmetricSequence(seq: seq)
print(answerSimmetric.count)
if answerSimmetric.count != 0 {
    print(answerSimmetric.map { String($0) }.joined(separator: " "))
}
