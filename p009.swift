//A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
//    
//    a^2 + b^2 = c^2
//    For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
//    
//There exists exactly one Pythagorean triplet for which a + b + c = 1000.
//    Find the product abc.

for a in 100 ... 999 {
    for b in 100 ... 999 {
        if 1000 * (a + b) == (a * b + 500000) && a < b {
            let c = sqrt((pow(Double(a + b), 2.0) - Double(2 * a * b)))
            print("\(a * b * Int(c))")
            print("a = \(a), b = \(b), c = \(c)")
            break
        }
    }
}
