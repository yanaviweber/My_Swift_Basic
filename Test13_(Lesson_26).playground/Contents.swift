import UIKit

// ------- Lesson 26 ---- Тест 13 -------//

// --------- 1 task

/*
 Создайте псевдоним (typealias) и назовите его допустим: Tuple. Пусть этот псевдоним будет типа кортежа (Int, Int, String). Создайте константу типа Tuple и присвойте ей значения.*
 */

// Result:
typealias Tuple = (Int, Int, String)
let myUniqueType: Tuple = (25, 800, "I love my cat Marsik")

print(myUniqueType)

/*
 
--------------------  print in console -----------------
 (25, 800, "I love my cat Marsik")
 
 */


// ---------- 2 task

/*
 Создайте любой конечный класс с двумя простыми свойствами типа Int, вычисляемым свойством, ленивым свойством, классовым свойством и одним методом. Инициализатор должен быть пользовательским, но не дефолтным.*
 */

// Result:

// конечный класс
final class myClassForTaskByVika {
    // два простых свойства
    let countOfBooks: Int
    let countOfMyPets: Int
    
    // одно классовое свойство
    class var myCodeDirectives: String {
        return "Swift, Objective-C, Java, Kotlin."
    }
    
    // вычисляемое свойство
    var summaryOfMyInspireExamples: Int {
        return countOfBooks + countOfMyPets
    }
    
    // ленивое свойство
    lazy var myWorkAndLife = PrintMyHistory()
    
    // метод для ленивого свойства
    func PrintMyHistory() -> (String) {
        return ("I was born in Lviv. And I paint pictures in my free time. Also i like read books a lot. My work specialization is developing mobile apps on native platvorms and languages \(myClassForTaskByVika.myCodeDirectives)")
    }
    
    // метод вывода на экран главного сообщения
    func PrintMyLifeTagline () -> (String) {
        return ("I create everything with love in my life and with inspire by help my fafourite \(countOfMyPets) pets: Marsik and Javochka, and my favourite \(countOfBooks) books: V.Usov - Swift 5, Ivan Akulov - Swiftbook, V.Lakjani - Unique Code, Algorithms Illuminated Part 3, Steve McConell - Code Complete, and others wonderful books.")
    }
    
    // пользовательские инициализаторы
    init(){
        countOfBooks = 25
        countOfMyPets = 2
    }
    
}


// ----- от себя придумала вывести на екран методы и сам объект

let vikaSkill = myClassForTaskByVika()
print(vikaSkill.PrintMyLifeTagline())
print(vikaSkill.countOfBooks)
print(vikaSkill.countOfMyPets)
print(vikaSkill.PrintMyHistory())

/*
 
 ----------  print in console  ------------
 
 I create everything with love in my life and with inspire by help my fafourite 2 pets: Marsik and Javochka, and my favourite 25 books: V.Usov - Swift 5, Ivan Akulov - Swiftbook, V.Lakjani - Unique Code, Algorithms Illuminated Part 3, Steve McConell - Code Complete, and others wonderful books.
 25
 2
 I was born in Lviv. And I paint pictures in my free time. Also i like read books a lot. My work specialization is developing mobile apps on native platvorms and languages Swift, Objective-C, Java, Kotlin.
 
 
 */
