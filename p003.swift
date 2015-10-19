// get the largest prime number of 600851475143

func theLargestPrimeNumber(var num : Int) -> Int {
    var primes = [2]
    var prime = primes.first!
    var factorPrimes : [Int] = []
    while true {
        while num % prime == 0 {
            num /= prime
            factorPrimes.append(prime)
        }
        if num == 1 {
            return factorPrimes.last!
        }
        repeat {
            repeat {
                prime++
            } while !isPrime(prime, primes: primes)
            primes.append(prime)
        } while num % prime != 0
    }
}

func isPrime(num : Int, primes : [Int]) -> Bool {
    for p in primes {
        if num % p == 0 {
            return false
        }
    }
    return true
}
theLargestPrimeNumber(10)
theLargestPrimeNumber(13195)
theLargestPrimeNumber(600851475143)
