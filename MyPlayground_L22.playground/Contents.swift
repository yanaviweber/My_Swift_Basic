import UIKit

//Lesson ----- Свойства классов -----/
// свойства классов могут записываться только в виде вычисляемых свойств
class Car {
    
    //свойства
    let products: Int
    let people: Int
    let pets: Int
    
    //свойства которые постоянные и не меняються, - помещать в свойства классов
    // свойства классов
    class var selfWeight: Int { return 1500}
    class var maxWeight: Int { return 2000}
    
    //вычисляемое свойство
    var totalWeight: Int {
        return products + people + pets + Car.selfWeight
    }
    
    //инициализаторы
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }
}

let car = Car(products: 30, people: 500, pets: 50)

let maxWeight = Car.maxWeight // свойство самого класса
let carWeight = Car.selfWeight // свойство самого класса
let totalWeight = car.totalWeight //свойство экземпляра класса а не самого класса
//car.totalWeight

if maxWeight < totalWeight {
    print("You can't drive because car is overloaded: \(totalWeight)")
} else {
    print("You can drive!")
}
