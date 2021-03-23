import UIKit

//Lesson ----- Функции -----/

var str = "Hello, playground"

// функции нужны нам для того чтобы мы не дублировали наш код
// все функции имеют составной тип
//1. простая функция, ничего непринимающа и ничего не возвращающая

//func sayHello () -> () {
//
//}


func sayHello (){
    print("Hello")
}

sayHello()



//2. функция, принимающая один параметр

func oneParam (param: Int) {
    var param = param
    param += 1
}

oneParam(param: 11)



//3. функция, не принимающая параметров, но возвращающая значения

func returnValue() -> Int {
    let c = 10
    
    return c
}

returnValue()



//4. функция, принимающая несколько параметров и возвращающая значение

func giveMeYour(name: String, andSecondName: String) -> String {
    return "Your full name is \(name) \(andSecondName)"
}


giveMeYour(name: "Viktoriia", andSecondName: "Romaniuk")




//5. функция, принимающая массив в качестве параметра и использующая вложенную функцию для работы

func calcMoneyIn(array: [Int]) -> Int {
    var sum = 0
    func sayMoney() {
        print(sum)
    }
    
    for item in array {
        sum += item
    }
    
    return sum
}

calcMoneyIn(array: [1, 2, 3, 4, 5])



//6. функция, которая принимает переменное число пераметров

func findSum(ofIntegers integers: Int...) -> Int { //integers - внешнее имя
    
    var sum = 0
    
    for item in integers { // integers - внутреннее имя
        sum += item
    }
    return sum
}

findSum(ofIntegers: 1, 2, 3, 4, 5, 6)



//7. имена параметров функции

func sum(_: Int) -> Int {
    return 10
}



//8. функция в качестве возвращаемого значения

func whatTodo(missed: Bool) -> ((Int) -> Int) {
    func missCountUp(input: Int) -> Int { return input + 1 }
    func missCountDown(input: Int) -> Int { return input - 1 }
    
    return missed ? missCountUp : missCountDown
}

var missedCount = 0
missedCount = whatTodo(missed: true)(missedCount)

missedCount = whatTodo(missed: false)(missedCount)
