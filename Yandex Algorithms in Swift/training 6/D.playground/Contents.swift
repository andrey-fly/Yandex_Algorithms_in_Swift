import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func checkModulesProtection(d: Int, params: (n: Int, a: Int, b: Int, w: Int, h: Int)) -> Bool {
    let numModulesCond1 = (params.h / (params.a + 2 * d)) * (params.w / (params.b + 2 * d)) >= params.n
    let numModulesCond2 = (params.w / (params.a + 2 * d)) * (params.h / (params.b + 2 * d)) >= params.n
    return  numModulesCond1 || numModulesCond2
}

func marsBinarySearch(params: (n: Int, a: Int, b: Int, w: Int, h: Int)) -> Int {
    
    var l = 0
    var r = max(params.w, params.h)
    
    while l < r {
        let m = (l + r + 1) / 2
        if checkModulesProtection(d: m, params: params){
            l = m
        } else {
            r = m - 1
        }
    }
    return l
}


let valueArray = readLine()!.split(separator: " ").map { Int($0)! }
let params = (valueArray[0], valueArray[1], valueArray[2], valueArray[3], valueArray[4])
print(marsBinarySearch(params: params))

