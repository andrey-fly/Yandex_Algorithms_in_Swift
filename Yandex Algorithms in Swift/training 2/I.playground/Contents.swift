import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func makeField(n: Int, m: Int, mines: [[Int]]) -> [[String]] {
    
    let dx = [-1, -1, -1, 0, 0, 1, 1, 1]
    let dy = [-1, 0, 1, -1, 1, -1, 0, 1]
    var field = [[Int]]()
    
    for _ in 0..<n + 2 {
        field.append(Array(repeating: 0, count: m + 2))
    }
    for mine in mines {
        for k in 0..<dx.count {
            field[mine[0] + dx[k]][mine[1] + dy[k]] += 1
        }
    }
    var fieldString = field.map { $0.map{ String($0) } }
    
    for mine in mines {
        fieldString[mine[0]][mine[1]] = "*"
    }
    
    return fieldString
}

let arrayCond = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, k) = (arrayCond[0], arrayCond[1], arrayCond[2])
var mines = [[Int]]()
for _ in 0..<k {
    mines.append(readLine()!.split(separator: " ").map { Int($0)! })
}
let field = makeField(n: n, m: m, mines: mines)
for i in 1..<n + 1 {
    for j in 1..<m + 1 {
        print(field[i][j], terminator: " ")
    }
    print("")
}
