import UIKit

//Lesson ----- Наследование -----/
// наследование нужно для того чтобы не дублировать функциональность

class Human {
    
    // свойства
    var name: String
    
    // методы
    func tellAboutMe() -> String {
        return "Hello! My name is \(name)!"
    }
    
    
    //инициализаторы
    init(name: String) {
        self.name = name
    }
}

// создание еще одного КЛАССА который будет наследовать класс Human

class Child: Human{
    //добавить свою новую функциональность
    var toy = "Horse"
    
    
    //переопрделение метода (с помощью КЛЮЧЕВОГО СЛОВА override)
    override func tellAboutMe() -> String {
        //для того чтобы сохранить весь функционал родительского метода, используем слово super
        let originalText = super.tellAboutMe()
        
        return originalText + " And I have a toy \(self.toy)"
    }
    
    //мы должны передавать в инициализатор все значения: и родительствого класса, и дочернего!!!!
    init(toy: String, name: String) {
        self.toy = toy
        super.init(name: name)
    }
    
    //если у нас есть какое-либо начальное значение, записываем инициализатор так:
    //переопределение инициализатора проиходит с помощью слова override
    override init(name: String){
        self.toy = "Humer"
        super.init(name: name)
    }
}
let child = Child.init(name: "Klava")
child.name
child.toy
child.tellAboutMe()


//создание еще одного объекта

let child1 = Child(toy: "Dinosaur", name: "Max")
child1.tellAboutMe()


// для того чтобы предотвратить наследование, нужно использовать слово final у метода, или у свойства, или у класса
// пример

final class Friend: Human{
    override func tellAboutMe() -> String {
         return "I am your friend"
    }
}
let someHuman = Friend(name: "Tanya")
someHuman.tellAboutMe()
