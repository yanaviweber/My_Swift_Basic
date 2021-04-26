import UIKit

//Lesson ----- Проверка типов и приведение типов -----/

// оператор проверки типа

// оператор приведения типа

// суперкласс (родительский)
class Furniture {
    let material: String
    
    init(material: String) {
        self.material = material
    }
    
}

// класс Bed который наследует параметры Furniture
class Bed: Furniture {
    let numberOfPlaces: Int
    
    init(numberOfPlaces: Int, material: String) {
        self.numberOfPlaces = numberOfPlaces
        super.init(material: material)
    }
}


// класс Cubpoard который наследует параметры Furniture
class Cupboard: Furniture {
    let numberOfShelves: Int
    
    init(numberOfShelves: Int, material: String) {
        self.numberOfShelves = numberOfShelves
        super.init(material: material)
    }
}

var arrayOfFurniture = [Furniture]()

arrayOfFurniture.append(Bed(numberOfPlaces: 2, material: "Wood"))
arrayOfFurniture.append(Bed(numberOfPlaces: 1, material: "Steel"))
arrayOfFurniture.append(Bed(numberOfPlaces: 2, material: "Wood"))

arrayOfFurniture.append(Cupboard(numberOfShelves: 4, material: "Wood"))
arrayOfFurniture.append(Cupboard(numberOfShelves: 6, material: "Steel"))
arrayOfFurniture.append(Cupboard(numberOfShelves: 3, material: "Wood"))
arrayOfFurniture.append(Cupboard(numberOfShelves: 5, material: "Steel"))

arrayOfFurniture

var bed = 0
var cupboard = 0

//for item in arrayOfFurniture {
//    if item is Bed { // оператор is  это оператор проверки типа. но он не приводит к типу.
//        bed += 1
//    } else {
//        cupboard += 1
//    }
//}

for item in arrayOfFurniture {
//    if item is Bed {
//
//        let bedForSure = item as! Bed // кастим элемент, приводим к типу. используем знак ! в том случае когда мы точно уверены на все 100% что получим Bed
//        // создаем константу bedForSure, и в нее помещаем в значение указывание того что наш счетчик(item) теперь уже рассматривается в качестве Bed
//        bed += 1
//    }
    
    // более элегантный способ сделать тоже самое
    
    if let bedForSure = item as? Bed { // используем ? в том случае когда не уверены что мы можем получить данный тип Bed, и как бы спрашиваем чтобы проверить будет ли это являться наш item в виде Bed. И если это так, то сохраняем наше новое значение в константу в значение которой мы засунули все это вычисление
        
        bed += 1
        bedForSure.numberOfPlaces
    }
}

bed
cupboard
