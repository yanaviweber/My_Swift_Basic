import UIKit

// ------- Lesson 29-30-31 ---- Тест 16 -------//

// --------- 1 task

/*
 
 У вас есть класс который называется Device, у этого класса есть свойство company. Также имеется еще два класса: Keyboard и Mouse, которые наследуют от класса Device.

 Создайте массив, который сможет содержать в себе любые объекты типа Device, т.е. И объекты класса Keyboard и объекты класса Mouse. Добавьте в этот массив несколько экземпляров каждого класса.

 Теперь создайте еще одну небольшую иерархию классов, например родительский класс - Animal, а наследующие от него классы - Dog и Cat. Также создайте массив который будет содержать в себе объекты типа Animal.

 Создайте массив типа AnyObject и поместите в него члены двух массов путем перечисления (через циклы for)

 И затем из этого массива c помощью проверки типов вытащите объекты только класса Dog.

 
 */

// Result:

// START ----- класс Device. -----
class Device {
    var company: String!
    
    init(company: String) {
        self.company = company
    }
}
// END

// START ----- класс Keyboard и Mouse которые наследуют Device -----
class Keyboard: Device {
    
    override init (company: String) {
        super.init(company: company)
    }
}

class Mouse: Device {
    
    override init (company: String) {
        super.init(company: company)
    }
}
// END

// START ----- массив любых объектов типа Device и заполнение объектами самого массива
var arrayOne: [Any] = []

let mouseBest = Mouse(company: "Fujitsu")
let mouseGood = Mouse(company: "Titaniia")
let mouseSuper = Mouse(company: "Apple")
let keyboardGood = Keyboard(company: "Lenovo")
let keyboardSuper = Keyboard(company: "Apple")
let keyboardVeryGood = Keyboard(company: "JapanMade")



arrayOne.append(mouseBest)
arrayOne.append(mouseGood)
arrayOne.append(keyboardGood)
arrayOne.append(keyboardSuper)

// --- вывод на экран массива в консоль путем перебора значений ---

for i in arrayOne {
     
    if let keyboard = i as? Keyboard {
        print(keyboard.company ?? keyboard)
    } else if
        let mouse = i as? Mouse {
        print(mouse.company ?? mouse)

    }
    
}
// END

// START ----- class Animal with properties and initializators -----
class Animal {
    var years: Int
    var color: String
    var species: String
    
    init(years: Int, color: String, species: String) {
        self.years = years
        self.color = color
        self.species = species
    }
}
// END
// START --- Dog и Cat которые наследуют Animal
class Dog: Animal {
    
}
class Cat: Animal {
    
}
// END

// START ----- массив myAnimals объектов типа Animal, создание объектов, и заполнение его объектамит -----
var myAnimals: [Animal] = []

let animalMyPet1 = Dog(years: 2, color: "black", species: "Dachshund")
let animalMyPet2 = Dog(years: 5, color: "grey", species: "Shepherd")
let animalMyPet3 = Cat(years: 3, color: "orange", species: "British fold")

myAnimals.append(animalMyPet1)
myAnimals.append(animalMyPet2)
myAnimals.append(animalMyPet3)
// END

// --- вывод на экран массива в консоль путем перебора значений ---
for a in myAnimals {
     
    if let dog = a as? Dog{
        print("Dog is: \(dog.years) years, \(dog.color), \(dog.species)")
    } else if
        let cat = a as? Cat {
        print("Cat is: \(cat.years) years, \(cat.color), \(cat.species)")
    }
}
// END

// START ----- создание массива объектов arrayFinalResult типа AnyObject -----
var arrayFinalResult: [AnyObject] = []


// --- заполнение массива arrayFinalResult объектами из двух массивов (arrayOne и myAnimals) с помощью перечислению в двух циклах for ---
for itemInArrayOne in arrayOne{
    arrayFinalResult.append(itemInArrayOne as AnyObject)
}
for itemInMyAnimals in myAnimals {
    arrayFinalResult.append(itemInMyAnimals)
}
// --- вывод на экран массива в консоль путем вывода в строку значений ---
for i in arrayFinalResult {
    if let mouse = i as? Mouse {
        print("Mouse: Made by: - \(mouse.company ?? "")")
    } else if
        let keyboard = i as? Keyboard {
        print("Keyboard: Made by: - \(keyboard.company ?? "")")
    } else if
        let dog = i as? Dog {
        print("Dog is: \(dog.years) years, \(dog.color), \(dog.species)")
    } else if
        let cat = i as? Cat {
        print("Cat is: \(cat.years) years, \(cat.color), \(cat.species)")
    }
}

// END

// START ----- вывод объектов типа Dog с помощью проверки типа с массива arrayFinalResult -----

for itemFinal in arrayFinalResult {
    if itemFinal is Dog{
        if let dog = itemFinal as? Dog {
            print("Dog is: \(dog.years) years, \(dog.color), \(dog.species)")
        } else {
           print("This is an another object.")
        }
    }
}
// END
