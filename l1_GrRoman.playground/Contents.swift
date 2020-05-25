import UIKit

//input
let a = 1.0
let b = -3.0
let c = 2.0

//output
var x1 = 0.0, x2 = 0.0
var str = ""

let d = pow(b, 2) - 4 * a * c

if d == 0 {
    x1 = -b / (2 * a)
    x2 = x1
    str = "x1 = \(x1), x2 = \(x2)"
} else if d > 0 {
    x1 = (-b - sqrt(d)) / (2 * a)
    x2 = (-b + sqrt(d)) / (2 * a)
    str = "x1 = \(x1), x2 = \(x2)"
} else if d < 0 {
    str = "no real roots"
}

print("1. quadratic equation")
print("\(a)*x^2 + \(b)*x + \(c) = 0")
print(str)
print("")

//---------------------

//input
let cathetus1 = 3.0
let cathetus2 = 4.0

//output
let area = cathetus1 * cathetus2 / 2
let hypotenuse = sqrt(pow(cathetus1, 2) + pow(cathetus2, 2))
let perimeter = cathetus1 + cathetus2 + hypotenuse

print("2. right triangle")
print("cathetus1 = \(cathetus1)")
print("cathetus2 = \(cathetus2)")
print("area = \(area)")
print("perimeter = \(perimeter)")
print("hypotenuse = \(hypotenuse)")
print("")

//---------------------

//input
let deposit = 100.0
let percent = 10.0
let years = 5

//output
var amount = deposit

for _ in 1...years * 12 {
    amount += amount / 12 * percent / 100
//    print("\(i) - \(amount)")
}

print("3. Deposit amount")
print("deposit = \(deposit)")
print("amount = \(amount)")

