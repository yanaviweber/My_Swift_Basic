import UIKit

// ------- Lesson ---- Универсальные шаблоны или Generics -------//

// когда мы говорим об универсальных типах, - мы имеем в виду что вместо этого типа может быть какой-нибудь другой тип

// массив, словарь, сет -  это универсальные шаблоны
// дженерик - это одна структура которая работает с разными типами

// inout - параметры  --- сквозные параметры в функции

// дженерик позволяет писать код который я смогу использовать в любых приложениях потому что он будет универсален

class A {
    
}

let arr = Array<Int>()
let array = [1, 2, 3, 4]
let arrayStr = ["one", "two", "three"]
let arrayCls = [A(), A(), A()]

// функция которая принимает в водные параметры Int
func paramValue(param: Int) -> String {
    return "\(param)"
}
paramValue(param: 2)


// функция которая принимает в водные параметры String
func paramValue2(param: String) -> String {
    return param
}
paramValue2(param: "10")


// напишем функцию в которую мы можем помещать различного типа вводные параметры
func paramValue3<T>(param: T) -> String {
    return "\(param)"
}
paramValue3(param: 5)
paramValue3(param: "C'mon")
paramValue3(param: true)


// ------- создадим структуру которая будет иметь СРАЗУ ДВА универсальных типа

//struct HelpfullFunctions<T: Compare, U: Equatable> { // подписать типы к конкретным протоколам

struct HelpfullFunctions<T, U> {
    func paramValueSome(param: T, param2: U) -> String {
        return "\(param), \(param2)"
    }
}
let example = HelpfullFunctions<String, Int>()
example.paramValueSome(param: "String1", param2: 5)


// ---- напишем функцию которая меняет местами параметры двух входных значений
// ---- это функция - дженерик

var a = "b"
var b = "a"

func swappy<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}
swap(&a, &b)
a
b
