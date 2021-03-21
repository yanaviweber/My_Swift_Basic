import UIKit

//Lesson ----- Инструкция If -----/

var str = "Hello, playground"

// классическая инструкция if - пример 1

let a = 3
let b = 1

if a == b {
    print("a equals to b")
} else if a < b{
    print("b exceeds a by \(b - a)")
} else if b < a {
    print("a exceeds b by \(a - b)")
}


// классическая инструкция if - пример 2
let isSunny = true
var action = ""

if isSunny{
    action = "I will go for a walk"
} else {
    action = "I will sit at home"
}


// классическая инструкция if - пример 2 ( выше ) с помощью тернарного оператора
action = isSunny ? "I will go for a walk" : "I will sit at home"


// классическая инструкция if - пример 3
// if a != b
// if a <= b
// if a >= b
// if a > b
// if a < b
// if ~=      диапазон

// диапазон
if 1...4 ~= b {
    print("Hello, World!")
}

if a == b {
    
}


// составные условия

let c = 5

if (c == 2 && a == 10) || c == 5 {
    print("Hello, coder!")
} else {
    print("!!!")
}
