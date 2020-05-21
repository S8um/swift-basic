import UIKit

enum EngineStatus: String{
    case Start = "started"
    case Stop = "stoped"
}

enum WindowsStatus: String {
    case Open = "opened"
    case Close = "closed"
}

enum CargoAction: String {
    case Load = "loaded"
    case Unload = "unloaded"
}

struct Car {
    var brand: String = ""
    var year: Int = 0
    var trunkVolume: Float = 0.0
    
    var engineStatus: EngineStatus = .Stop
    var windowsStatus: WindowsStatus = .Close
    var load: Float = 0.0
    
    init(brand: String, year: Int, trunkVolume: Float) {
        self.brand = brand
        self.year = year
        self.trunkVolume = trunkVolume
    }
    
    func description() {
        print("Car - \(brand)(\(year)), trunk volume (\(trunkVolume))")
        print("Engine-\(engineStatus.rawValue), windows-\(windowsStatus.rawValue), loaded-\(load) litres")
    }
    
    mutating func windows(status: WindowsStatus) {
        self.windowsStatus = status
        print(" - windows \(status.rawValue)")
    }
    
    mutating func engine(status: EngineStatus) {
        self.engineStatus = status
        print(" - engine \(status.rawValue)")
    }
    
    mutating func cargo(action: CargoAction, vol: Float) {
        switch action {
        case .Load:
            self.load += vol
        case .Unload:
            self.load -= vol
        }
        print(" - \(action.rawValue) \(vol) litres")
    }
}

struct Truck {
    var brand: String = ""
    var year: Int = 0
    var tonnage: Float = 0.0
    
    var engineStatus: EngineStatus = .Stop
    var windowsStatus: WindowsStatus = .Close
    var load: Float = 0.0
    
    init(brand: String, year: Int, trunkVolume: Float) {
        self.brand = brand
        self.year = year
        self.tonnage = trunkVolume
    }
    
    func description() {
        print("Truck - \(brand)(\(year)), tonnage (\(tonnage))")
        print("Engine-\(engineStatus.rawValue), windows-\(windowsStatus.rawValue), loaded-\(load) kg")
    }
    
    mutating func windows(status: WindowsStatus) {
        self.windowsStatus = status
        print(" - windows \(status.rawValue)")
    }
    
    mutating func engine(status: EngineStatus) {
        self.engineStatus = status
        print(" - engine \(status.rawValue)")
    }
    
    mutating func cargo(action: CargoAction, vol: Float) {
        switch action {
        case .Load:
            self.load += vol
        case .Unload:
            self.load -= vol
        }
        print(" - \(action.rawValue) \(vol) kg")
    }
}

var car1 = Car(brand: "Ford", year: 1978, trunkVolume: 500)

car1.description()

car1.engine(status: .Start)
car1.windows(status: .Open)
car1.cargo(action: .Load, vol: 120)
car1.cargo(action: .Unload, vol: 70)

car1.description()

car1.windows(status: .Close)
car1.engine(status: .Stop)

car1.description()
print("------------")

var truck1 = Truck(brand: "Man", year: 1999, trunkVolume: 6000)

truck1.description()

truck1.engine(status: .Start)
truck1.windows(status: .Open)
truck1.cargo(action: .Load, vol: 6000)
truck1.cargo(action: .Unload, vol: 4500)

truck1.description()

truck1.windows(status: .Close)
truck1.engine(status: .Stop)

truck1.description()
