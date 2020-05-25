import UIKit


// 1 - функция, которая определяет, четное число или нет
func isEven(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}


// 2 - функция, которая определяет, делится ли число без остатка на 3
func isTriple(number: Int) -> Bool {
    if number % 3 == 0 {
        return true
    } else {
        return false
    }
}


// 3 - создать возрастающий массив из 100 чисел
var myArray = Array(0...99)


// 4 - удалить из массива все четные числа и все числа, которые не делятся на 3
for item in myArray {
    if isEven(number: item) || !isTriple(number: item) {
        myArray.remove(at: myArray.firstIndex(of: item)!)
    }
}
print("\(myArray.count) items - \(myArray)")


// 5* - функция, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов
func fib(numbers: Int) -> Array <Decimal> {
    var fibArray: [Decimal] = []
    var i = 0
    
    while i <= numbers {
        if i == 0 {
            fibArray.append(0)
        } else if i == 1 {
            fibArray.append(1)
        } else {
            fibArray.append(fibArray[i - 2] + fibArray[i - 1])
        }
        i += 1
    }
    
    return fibArray
}

var myFibArray = fib(numbers: 100)

print("\(myFibArray.count - 1) items - \(myFibArray)")

