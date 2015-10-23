// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

var sumOfSquared = 0
var squaredOfSum = 0

for i in 1...100 {
    sumOfSquared += i * i
    squaredOfSum += i
}
print(sumOfSquared - (squaredOfSum * squaredOfSum))
