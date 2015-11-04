// 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

// What is the sum of the digits of the number 2^1000?

func strAddition(a: String, b: String) -> String {
    var aArr = a.characters.map({String($0)})
    var bArr = b.characters.map({String($0)})
    switch a.characters.count - b.characters.count {
    case (let diff) where diff > 0:
        for _ in 0 ..< diff {
            bArr.insert("0", atIndex: 0)
        }
    case (let diff) where diff < 0:
        for _ in 0 ..< diff {
            aArr.insert("0", atIndex: 0)
        }
    default:
        break
    }
    
    var shift = 0
    var res: String = ""
    for var i = aArr.count - 1; i >= 0; i-- {
        let _a = aArr[i]
        let _b = bArr[i]
        var r = Int(_a)! + Int(_b)! + shift
        if r > 9 {
            shift = 1
            r -= 10
        } else {
            shift = 0
        }
        res += String(r)
    }
    if shift == 1 {
        res += "1"
    }
    return String(res.characters.reverse())
}

var n = "2"
for _ in 1 ..< 1000 {
    n = strAddition(n, b: n)
}
let digits = n.characters.map({Int(String($0))!})
let sum = digits.reduce(0, combine: {$0 + $1})
print(sum) 
