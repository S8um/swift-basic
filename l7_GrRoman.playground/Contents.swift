import UIKit

/*
 1. Придумать класс, методы которого могут создавать непоправимые ошибки. Реализовать их с помощью try/catch.
 2. Придумать класс, методы которого могут завершаться неудачей. Реализовать их с использованием Error.
 */

enum WarehouseError: Error {
    case invalidMaterial
    case outOfStock
    case needMoreGold
}

struct Material {
    var price: Int
    var count: Int
    let name: String
}

class Warehouse {
    var materials = [
        "Stone": Material(price: 200, count: 10, name: "Stone"),
        "Wood": Material(price: 100, count: 0, name: "Wood"),
        "Gem": Material(price: 800, count: 2, name: "Gem")
    ]
    
    var gold = 300
    
    func giveMaterial(name: String) throws -> String {
        guard let material = materials[name] else {
            throw WarehouseError.invalidMaterial
        }
        
        guard material.count > 0 else {
            throw WarehouseError.outOfStock
        }
        
        guard material.price <= gold else {
            throw WarehouseError.needMoreGold
        }
        
        gold -= material.price
        
        var newMaterial = material
        newMaterial.count -= 1
        print("Take a \(name)")
        return name
    }
}

let warehouse = Warehouse()

do {
    let _ = try warehouse.giveMaterial(name: "Stone")
} catch WarehouseError.invalidMaterial {
    print("Not found")
} catch WarehouseError.outOfStock {
    print("Ended")
} catch WarehouseError.needMoreGold {
    print("Need more gold")
} catch let error {
    print(error.localizedDescription)
}
