import UIKit

// ------- Lesson ---- Обновления в Swift 4-------//

// многострочные строки в Swift 4
let string = "some string"


// отступ у каждой строки отсчитывается относительно закрывающей группы двойных кавычек
let multithreadString =
"""
    this is multithread string
    this is multithread string
this is multithread string
"""
print(multithreadString)


// строки теперь снова стали коллекциями

// ранее было
//for character in string.characters{
//    print(character)
//}

// теперь стало

for character in string {
    print(character)
}


// новый оператор - "одностороннего диапазона"

let array = ["1", "2", "3", "4"]
print(array[1])
print(array[..<2]) // оператор одностороннего диапазона

print(array[...2]) // вторая версия оператора одностороннего диапазона, но которая включает в себя второй елемент

print(array[0...]) // хотим обозначить все елементы массива с нуля и до самого конца (с обратной стороны)
print(array[1...])
