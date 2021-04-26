import UIKit

// ------- Lesson 20 - 21 - 22 ---- Тест 9 -------//

// --------- 1 task

//К дополнению к заданию в прошлом тесте в класс Student добавить еще одно свойство fullname: String, которое будет вычисляться на основании параметров name и surname. У любого объекта этого класса вызвать это свойство и вывести результат на экран.

class Student {
    var name: String
    var surname: String
    var yearOfBorn: Int
    var mark: Double
    var fullname: String { name + " " + surname }
    
    init(name: String, surname: String, yearOfBorn: Int, mark: Double) {
        self.name = name
        self.surname = surname
        self.yearOfBorn = yearOfBorn
        self.mark = mark
    }
    
    
    // функция специально для вывода результата с первой части задачи
    func printParams2() -> () {
        print("Name: \(self.name), Surname: \(self.surname), Year of born: \(self.yearOfBorn), Mark: \(self.mark)")
    }
    // функция специально для вывода результата с второй части задачи где сортировка по параметру Марк
    func printSortParams() -> () {
        print("Name: \(self.name) - Mark: \(self.mark)")
    }
    
}

var student = Student(name: "Viktoriia", surname: "Romaniuk", yearOfBorn: 1991, mark: 1.100012)
student.printParams2()

var studentMath = Student(name: "Alex", surname: "Lozansky", yearOfBorn: 1998, mark: 2.202239)

var studentBusiness = Student(name: "Tomas", surname: "Furexshtain", yearOfBorn: 1972, mark: 2.203592)

var studentBiology = Student(name: "Lisa", surname: "Miroshnichenko", yearOfBorn: 1985, mark: 1.357895)

var studentAccounting = Student(name: "Tatjana", surname: "Raduzhnaja", yearOfBorn: 1968, mark: 2.478939)

var arrayOfStudents = [studentMath, studentBusiness, studentBiology, studentAccounting]

var sortedResultFinal: () = arrayOfStudents.sorted { ($0.mark > $1.mark) }.forEach { $0.printSortParams()}

// вызов свойства fullname у любого экземпляра класса
var fullnameOfObject = (student.fullname, studentMath.fullname, studentBusiness.fullname, studentBiology.fullname, studentAccounting.fullname)
print(fullnameOfObject)
// Result:
//("Viktoriia Romaniuk", "Alex Lozansky", "Tomas Furexshtain", "Lisa Miroshnichenko", "Tatjana Raduzhnaja")

// --------- 2 task

//final class Pet {
//    func sound() {
//        print("pi pi pi")
//    }
//}
//
//class Cat: Pet {
//    override func sound(){
//        print("Meow")
//    }
//}
//let barsik = Cat()
//barsik.sound()

// Result:
// код не скомпилируется из-за невозможности переопределить final родительский класс. final классы нельзя переопределить

// --------- 3 task

//class Car {
//    var type: String
//    var age: Int
//}
//let audi = Car(type: "A6", age: 3)
//print(audi.type)

// Result:
// код не скомпилируется потому что не обьявлены инициализаторы в классе Car
