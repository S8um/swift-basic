import UIKit

/*
 1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
 3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
*/

struct Queue<Element: Comparable> {
    var items: [Element] = []
    
    mutating func add(_ item: Element) {
        items.append(item)
    }
    
    mutating func poll() -> Element {
        return items.removeFirst()
    }
    
    mutating func sort() -> [Element] {
        return items.sorted(by: <)
    }
    
    func countItems() {
        print("Total: \(items.count)")
    }
    
    func filter(item: Element) {
        print("Finded: \(items.filter({$0 >= item}))")
    }
}


var queueOfString = Queue<String>()
queueOfString.add("Honda")
queueOfString.add("Yamaha")
queueOfString.add("Kawasaki")
queueOfString.add("Suzuki")
queueOfString.add("BMW")
queueOfString.add("Ducatti")

print(queueOfString)
queueOfString.countItems()

print("Get first element: \(queueOfString.poll())")
print(queueOfString)
queueOfString.countItems()

print("Sorted: \(queueOfString.sort())")

queueOfString.filter(item: "Kawasaki")
