// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//
// Find the sum of all the primes below two million.

var nums = Array(2 ..< 2000000)
var primes : [Int] = []
while nums.count > 0 {
    let prime = nums.first!
    primes.append(prime)
    nums = nums.filter({(i : Int) -> Bool in return i % prime != 0})
}
print("\(primes.reduce(0, combine:{ $0 + $1 }))")
