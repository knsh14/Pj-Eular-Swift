// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

var nums = Array(1 ... 20)
var ans = nums.reduce(1, combine: {(a: Int, b: Int) -> Int in a * b})
for i in nums[1 ..< nums.count] {
    while check(ans / i) {
        ans /= i
    }
}
func check(num : Int) -> Bool {
    for i in 1 ... 20 {
        if num % i != 0 {
            return false
        }
    }
    return true
}
print(ans)
