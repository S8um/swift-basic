import UIKit

/*
 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести значения свойств экземпляров в консоль.
*/

class Car {
    enum EngineStatus: String{
        case Start = "started"
        case Stop = "stoped"
    }
    
    let brand: String
    let year: Int
    
    var engine: EngineStatus
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
        self.engine = .Stop
    }
    
    func action() {
//        print("Action")
    }
    
    func description() {
        print("Car - \(brand)(\(year)), engine-\(engine.rawValue)")
    }
    
}


class SportCar: Car {
    enum Race: String {
        case Drag = "Drag racing"
        case Drift = "Drift racing"
    }
    
    var maxSpeed: Int
    var raceType: Race
    
    init(brand: String, year: Int, maxSpeed: Int, raceType: Race) {
        self.maxSpeed = maxSpeed
        self.raceType = raceType
        super.init(brand: brand, year: year)
        
    }
    
    override func action() {
        print("\(raceType) racing - Ready? Go!")
    }
}

class TrunkCar: Car {
    enum Cargo: String {
        case Stone = "Stone"
        case Wood = "Wood"
    }
    
    var maxTonnage: Int
    var cargoType: Cargo
    
    init(brand: String, year: Int, maxTonnage: Int, cargoType: Cargo) {
        self.maxTonnage = maxTonnage
        self.cargoType = cargoType
        super.init(brand: brand, year: year)
        
    }
    
    override func action() {
        print("Loading \(cargoType.rawValue)")
    }
}

var sportCar1 = SportCar(brand: "Nissan Skyline", year: 1999, maxSpeed: 290, raceType: .Drag)

sportCar1.description()
sportCar1.engine = .Start
sportCar1.description()
sportCar1.action()

print("---------")

var trunkCar1 = TrunkCar(brand: "Man", year: 1992, maxTonnage: 6000, cargoType: .Stone)

trunkCar1.description()
trunkCar1.engine = .Start
trunkCar1.description()
trunkCar1.action()
