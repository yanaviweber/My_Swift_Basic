import UIKit

// ------- Lesson 23 ---- Тест 10 -------//

// --------- 1 task

//Задание: Предположим, что у нас есть некий тест с каким-то кол-вом слов. Все это вписано в определенное количество тетрадей по 12 страниц. Теперь, основываясь на конкретных цифрах примера, мы должны иметь возможность быстро вычислить кол-во требуемых тетрадей для текста.
//
//№1. Создайте класс WorkBook, которая будет иметь свойство класса maxPages = 12. Также создайте свойства text (количество слов в тексте), wordsOnPage (количество слов на странице) и вычисляемое свойство pages, которое имеет тип кортежа (Int, Int), возвращая значения деления text на wordsOnPage и второе это остаток от деления.

class Workbook {
    // свойства
    var maxPages = 12
    var text: Int
    var wordsOnPage: Int
    var pages: (Int, Int) {
        return (text/wordsOnPage,text % wordsOnPage)
        
    }
    
    // инициализаторы класса
    init(text: Int, wordsOnPage: Int) {
        self.text = text
        self.wordsOnPage = wordsOnPage
    }
    
    // функция для ленивого свойства
    func SomeFuncForWorkBook() -> (String) {
        return "This is some string for WorkBook"
    }
    
    // ленивое свойство
    lazy var myExample = SomeFuncForWorkBook()
    
    // реализация задачи №2
    var calcWorkBookQuantity: Float{
        // самая удачная попытка решения задачи №2 в момент прохождения теста
        let tempResult1 = String(pages.0)
        let tempResult2 = String(pages.1)
        let tempResult3 = Float(tempResult1 + "." + tempResult2)!
        return tempResult3.rounded()
        
        // попытки решить задачу №2
        // return (String) (pages.0 + "." + pages.1)
        // let tempFloat = Float(String(pages.0) + "." + String(pages.1))
        // return self.pages.rounded()
        // var resultOfNeedWorkbooks = roundf(pages * 100) / 100
    
    }
}

// Result:
// создано



// --------- 2 task
//№2. Создайте вычисляемое свойство calcWorkBookQuantity, которое точно вычисляем количество тетрадей, которое требуется для текста (т.е. если нам нужно 7.5 тетрадей, то это все равно 8).
//
//Также создайте функцию, которая ничего не принимает, возвращает строку. Создайте свойство lazy и присвойте ему эту функцию.


// Result:

// Сделано


// --------- 3 task
//№3. Создайте экземпляр, вызовите его свойство calcWorkBookQuantity, вызовите и его ленивое свойство, которому присвоена функция. *

let myWorkBook = Workbook(text: 87600, wordsOnPage: 98)
let someFunction = myWorkBook.myExample
print(myWorkBook.pages)
print(myWorkBook.calcWorkBookQuantity)
print(someFunction)
// Result:

//(893, 86)
//894.0
//This is some string for WorkBook
