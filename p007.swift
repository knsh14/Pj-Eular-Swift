// What is the 10,001st prime number?

var nums = Array(2..<120000)
var primes : [Int] = []
while primes.count < 10001 {
    let prime = nums.first!
    primes.append(prime)
    nums = nums.filter({(i : Int) -> Bool in return i % prime != 0})
}
print(primes[10000])
