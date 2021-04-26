import UIKit

//Lesson ----- Инициализаторы классов -----/

// инициализация это процесс создания экземпляра
// инициализатор - это такая функция и/или метод которая устанавливает начальные значения для свойств хранения

var str = "Hello, playground"

class Human {
    //свойства
    var name: String
    var age: Int?
    var hairs: Bool
    
    //методы. методы это теже функции но внутри класса
    
    func description() -> String {
        // для того чтобы избавиться от слова Optional в выводе значений свойств в методе, нужно: - (красивое извлечение значечения без знака восклицания)
        if let humanAge = age {
            return "Hello! My name is \(name) and I'm \(humanAge) years old!"
        } else {
            return "Hello! My name is \(name)"
        }
    }
    
    // инициализаторы
    init() {
        name = "Vika"
        hairs = true
    }
    
    init(name: String, age: Int?, hairs: Bool) {
        
        //self обозначает что мы обращаемся к свойству именно нашего класса
        self.name = name
        self.age = age
        self.hairs = hairs
    }
}

//создадим екземпляр класса
//указать тип явно

let human = Human()
human.age
human.name
human.hairs

let human1 = Human(name: "Jason", age: 40, hairs: true)

// в инициализаторы можно передавать другие инициализаторы для того чтобы облегчить инициализацию
