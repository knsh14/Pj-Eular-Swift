// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//
// Find the largest palindrome made from the product of two 3-digit numbers.

var ans = 0
for i in 900 ... 999 {
    next: for j in 900 ... 999 {
        let product = i * j
        let p = String(product).characters
        for pair in zip(p, p.reverse()) {
            if pair.0 != pair.1 {
                continue next
            }
        }
        if ans < product {
            ans = product
        }
    }
}
print(ans)

// we can ignore numbers less than 900.
// because most of product of 900 is more than 899 and 900.
