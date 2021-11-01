import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func getDetails(n: Int, k: Int, m: Int) -> Int {
    if n >= k && k >= m {
        let kn = n / k  // количество заготовок
        let krest = n % k  // количество оставшегося от заготовок металла
        let mn = k / m * kn  // количество деталей
        let mrest = k % m * kn  // количесвто оставшегося металла от деталей
        return mn + getDetails(n: mrest + krest, k: k, m: m)
    } else {
        return 0
    }
}

let arrayCond = readLine()!.split(separator: " ").map {
        Int($0)!
    }
let (n, k, m) = (arrayCond[0], arrayCond[1], arrayCond[2])
print(getDetails(n: n, k: k, m: m))

