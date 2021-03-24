import UIKit

//Lesson ----- Классы -----/
// класс это шаблон по которому создаються объекты

var str = "Hello, playground"

class Human {
    //свойства
    var name = "Vika"
    var age: Int? = 29
    var hairs = true
    
    //методы. методы это теже функции но внутри класса
    
    func description() -> String {
        // для того чтобы избавиться от слова Optional в выводе значений свойств в методе, нужно: - (красивое извлечение значечения без знака восклицания)
        if let humanAge = age {
            return "Hello! My name is \(name) and I'm \(humanAge) years old!"
        } else {
            return "Hello! My name is \(name)"
        }
        
    }
}

//создадим екземпляр класса
//указать тип явно

let humanOne = Human()


//добраться до свойств объекта класса
humanOne.age
humanOne.name
humanOne.hairs
humanOne.description()


//поменять знаечние свойства объекта класса
humanOne.name = "Alice"

//вывести на экран метод объекта с измененным свойством
humanOne.description()


let humanTwo = Human()
humanTwo.hairs = false
humanTwo.name = "Jack"
humanTwo


// нельзя создать новые значения для объектов класса. Можно только внести параметры уже существующих свойств класса которые он наследует.

// -------- когда нужно создать массив из экземпляров класса, - нужно:
var array = [Human]() //инициализируем массив как МАССИВ ОБЪЕКТОВ

//помещаем внутрь массива экземпляры класса
array.append(humanOne)
array.append(humanTwo)


