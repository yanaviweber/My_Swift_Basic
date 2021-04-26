import UIKit

//Lesson ----- Перечисления или энумы -----/

// это типы первого класса в Свифт
// объединяют в себе связанные значения и присваивают им один общий тип
// работая с энумами, - мы не можем выйти за рамки этого типа

// имеют в Свифт вычисляемые свойства, методы экземпларов, а также инициализаторы, кейсы
// кейсы это основная составная часть енума

// enum в имени пишется ТОЛЬКО с большой буквы

enum Movement {
    case forward
    case backward
    case left
    case right
}

//let movementDirecton: Movement = Movement.backward
let movementDirecton: Movement = .backward



// ----- для того чтобы получить исходное значение в виде строки, нужно добавить String к самому enum, и в вызове сменить строку по-другому --------------------------
enum MovementSecond: String {
    case forwardSecond
    case backwardSecond
    case leftSecond
    case rightSecond
}
//получение значения в виде строки в вызове
let movementDescription = MovementSecond.backwardSecond.rawValue



// ----- мы можем поставить в тип Int в сам enum, и тогда получим дефолтные значения --------------------------
enum MovementThird: Int {
    case forwardThird
    case backwardThird
    case leftThird
    case rightThird
}
//получение значения в виде строки в вызове
let movementDescriptionThird = MovementThird.backwardThird.rawValue



// ----- мы можем поставить в тип Int в сам enum, и тогда еще поставить в case-ы свои любые значения которые хотим --------------------------
enum MovementFourth: Int {
    case forwardFourth = 10
    case backwardFourth = 23
    case leftFourth = 121
    case rightFourth = 123
}
//получение значения в виде строки в вызове
let movementDescriptionFourth = MovementFourth.backwardFourth.rawValue


// ----- !!!!! важно чтобы значения в case-ах были УНИКАЛЬНЫМИ! НЕЛЬЗЯ ставить одинаковые значения, - иначе будет ошибка!!!  --------------------------


// ----- в enum можно ставить вместе case-ы и вычисляемые свойства  --------------------------
enum Device {
    case iPad(color: String), iPhone
    
    var year: Int {
        switch self {
            case .iPhone:  return 2007
            case .iPad(let color) where color == "Black": return 2020
            case .iPad:  return 2010
        }
    }
}

let yearOfProduction = Device.iPad(color: "Black").year


// ----- мы можем вкладывать в enum другой enum --------------------------

enum Character {
    enum Weapon: Int {
        case sword = 4
        case wand = 1
        
        var damage: Int {
            return rawValue * 10
        }
    }
    
    enum CharacterType {
        case knight
        case mage
    }
}

let charWeapon = Character.Weapon.sword.damage


// ----- индиректный enum --------------------------

enum Lunch {
    case salad
    case soup
    indirect case meal(Lunch, Lunch) // так можно работать с перечислениями которые имеют внутри себя тип самого себя
}
// ------ если много кейсов в индиректном enum, то нужно ставить слово indirect возле самого родительского enum

indirect enum Dinner { // вот тут ставить слово indirect
    case saladDinner
    case soupDinner
    case myFavoriteSalad
    case myFavoriteSoup
    case myFavoriteTea
    case myFavoriteCoffee
    case myFavoriteDessert
    case mealDinner(Dinner, Dinner, Dinner, Dinner, Dinner, Dinner, Dinner)
}

let myDinner = Dinner.mealDinner(.saladDinner, .soupDinner, .myFavoriteSalad, .myFavoriteSoup, .myFavoriteDessert, .myFavoriteTea, .myFavoriteCoffee)
