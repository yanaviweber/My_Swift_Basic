import UIKit

// ------- Lesson 15 - 16 - 17 ---- Тест 7 -------//

// --------- 1 task
//Ниже представлен класс, в теле этого класса создайте функцию, которая будет распечатывать параметры данного класса по конкретному объекту. Создайте такой объект класса Student, вызовите у него эту функцию и выведите результат на экран.


class Student {
    var name: String
    var surname: String
    var yearOfBorn: Int
    var mark: Double
    
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

// Result:
// Name: Viktoriia, Surname: Romaniuk, Year of born: 1991, Mark: 1.100012


// --------- 2 task

//
//К дополнению к первому заданию, создайте 4 объекта типа Student, поместите их в массив и отсортируйте по свойству mark по возрастанию. Выведите полученный результат на экран.*

var studentMath = Student(name: "Alex", surname: "Lozansky", yearOfBorn: 1998, mark: 2.202239)

var studentBusiness = Student(name: "Tomas", surname: "Furexshtain", yearOfBorn: 1972, mark: 2.203592)

var studentBiology = Student(name: "Lisa", surname: "Miroshnichenko", yearOfBorn: 1985, mark: 1.357895)

var studentAccounting = Student(name: "Tatjana", surname: "Raduzhnaja", yearOfBorn: 1968, mark: 2.478939)

var arrayOfStudents = [studentMath, studentBusiness, studentBiology, studentAccounting]

//print(arrayOfStudents)

// сортируем по значению марк
//var sortResultByMarkNames = arrayOfStudents.sorted { $0.mark > $1.mark } .map {$0.name}
//print(sortResultByMarkNames)
//
//
//var sortResultByMark = arrayOfStudents.sorted { $0.mark > $1.mark } .map {$0.mark}
//print(sortResultByMark)

// ---------- второй вариант решения. Короткий и идеальный -----------
//arrayOfStudents.sorted { ($0.mark < $1.mark) }.forEach { $0.printSortParams() }
var sortedResultFinal: () = arrayOfStudents.sorted { ($0.mark > $1.mark) }.forEach { $0.printSortParams()}


// Result:
//Name: Lisa - Mark: 1.357895
//Name: Alex - Mark: 2.202239
//Name: Tomas - Mark: 2.203592
//Name: Tatjana - Mark: 2.478939

