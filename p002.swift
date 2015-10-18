func fib(i : Int) -> Int {
    guard i > 0 else {
        return 0
    }
    var f = 1
    var s = 2
    var tmp = 0
    var res = 0
    while res < i {
        if s % 2 == 0 {
            res += s
        }
        tmp = f + s
        f = s
        s = tmp
    }
    if tmp % 2 == 0 {
        res += tmp
    }
    return res
}

fib(4000000)
