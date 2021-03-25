import UIKit

//Lesson ----- Вычисляемые свойства -----/
//это свойства которые вычисляют собственное значение. Это не обязательно должны быть числа, допускаются и строки

//вычисляемое свойство это всегда переменная

// ------- пример номер 1  ------------

class Rectangular {
    let height: Int
    let width: Int
    let depth: Int
    
    // вычисляемое свойство
    var volume: Int {
        return height * width * depth
    }
    
    init(height: Int, width: Int, depth: Int){
        self.height = height
        self.width = width
        self.depth = depth
    }
}

let rect = Rectangular(height: 10, width: 12, depth: 13)
rect.volume



// ------- пример номер 2  ------------

class Person {
    var name: String
    var secondName: String
    
    var fullName: String { // внутри скобочек используется геттер и сеттер свойства
        // это такие блоки кода, которые определяют что должно происходить когда устанавливается новое значение или когда берется новое значение
        
        
        // геттер: ------- это что должно происходить когда берется новое значение
        get {
            return name + " " + secondName
        }
        
        
        // сеттер: ------- что должно происходить когда устанавливается новое значение для этого свойства
        set(anotherNewValue){
            
            // дефолтное имя newValue, и мы его переопределяем на anotherNewValue для того чтобы туда запихнуть значение fullName
            let array = anotherNewValue.components(separatedBy: " ") // разбираем на части через пробелы
            name = array[0]
            secondName = array[1]
        }
    }
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
}

let person = Person(name: "Viktoriia", secondName: "Romaniuk")
person.fullName

person.name
person.secondName

// мы устанавливаем новое значение нашему fullName, и срабатывает наш сеттер, и вто время когда мы устанавливаем это новое значение, - наша newValue разбирается по компонентам через пробел в нашей строке и попадает в массив в качестве первого и второго элементов

person.fullName = "Zinaida Petrova"
person.name
person.secondName
