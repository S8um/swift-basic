import UIKit

/*
 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести сами объекты в консоль.
*/

protocol Car {
    var carBrand: String {get set}
    var carYear: Int {get set}
    var engineStarted: Bool { get set }
    var windowsOpened: Bool { get set }
    func action()
}

extension Car {
    mutating func engine(start: Bool) {
        self.engineStarted = start
    }
    
    mutating func windows(open: Bool) {
        self.windowsOpened = open
    }
    
    func action() {
        print("Action - Checking engine")
    }
}

class SportCar: Car {
    var carBrand: String
    var carYear: Int
    var engineStarted: Bool = false
    var windowsOpened: Bool = false
    
    var maxSpeed: Int
    
    init(carBrand: String, carYear: Int, maxSpeed: Int) {
        self.carBrand = carBrand
        self.carYear = carYear
        self.maxSpeed = maxSpeed
    }
    
    func action() {
        print("Action - Checking petrol engine")
    }
}

extension SportCar {
    func printDescription() {
        print("\(carBrand) (\(carYear)): max speed-\(maxSpeed), engine started-\(engineStarted), windows opened-\(windowsOpened)")
    }
}

class TruckCar: Car {
    var carBrand: String
    var carYear: Int
    var engineStarted: Bool = false
    var windowsOpened: Bool = false
    
    var maxTonnage: Int
    
    init(carBrand: String, carYear: Int, maxTonnage: Int) {
        self.carBrand = carBrand
        self.carYear = carYear
        self.maxTonnage = maxTonnage
    }
    
    func action() {
        print("Action - Checking diesel engine")
    }
}

extension TruckCar {
    func printDescription() {
        print("\(carBrand) (\(carYear)): max tonnage-\(maxTonnage), engine started-\(engineStarted), windows opened-\(windowsOpened)")
    }
}

var car1 = SportCar(carBrand: "TVR", carYear: 2000, maxSpeed: 280)

car1.printDescription()
car1.action()
car1.engine(start: true)
car1.windows(open: true)
car1.printDescription()

print("--------")

var car2 = TruckCar(carBrand: "MAN", carYear: 1995, maxTonnage: 5800)

car2.printDescription()
car2.action()
car2.engine(start: true)
car2.windows(open: true)
car2.printDescription()
