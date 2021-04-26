import UIKit

//Lesson ----- Базовые операторы -----/

var str = "Hello, playground"


// оператор присваивания =
let a = "Hello, World"


// арифметические операторы + - / *
let b = 1 + 2
let c = 10 / 2


// оператор остатка %
let d = 100 % 6


// составные операторы += -= /= *=
let e = 1
var f = 0
f += e
f += 1
f -= 1
f *= 10
f /= 5
//f = f + e


// операторы сравнения <= >= != == < >
let g = 10
let h  = 11

g < h
g > h

g != h

h <= h
g == h


// оператор заменяющий nill ??
let defaultName = "Steve"
var name: String? = nil

let myName = name ?? defaultName


// унарный оператор -, тернарный оператор
-5

let bool = false

let t = bool ? 10 : 30


// логические операторы && || !
let temp = 10
let wind = 3

if temp >= 10 && wind <= 5 {
    print("!")
}

let bool1 = true
let bool2 = !bool1 //этот знак ! работает только с булевыми значениями, и меняет значение на обратное (true на false, и false на true)
!bool2


// операторы диапазона ...  ..<
1...10 // входят все значения от 1 до 10 включая 1 и 10, закрытый  диапазон
1..<10 // входят все значения от 1 до 9 включая 1 и 9, открытый диапазон
