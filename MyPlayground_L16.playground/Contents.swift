import UIKit

//Lesson ----- Кортежи -----/

// кортеж это некое объединение нескольких значение которое мы хотим передать или объединить чтобы иметь все в одном месте

var str = "Hello, playground"

let one = 1
let two = 2
let three = 3

// кортеж
(one, two, three)


// кортеж номер два
let boy = (5, "Sergey")

// обращение к элементу кортежа
boy.0
boy.1

// как мы можем присвоить сразу нескольким константам несколько значений
let (first, second, third) = (1, 2, 3)
//обращение к значениям этих же констант
first
second
third

let greenPencil = (color: "green", length: 20, weight: 4 )
// все эти значения присвоить в три константы
let(greenColor, greenLength, greenWeight) = greenPencil
// обратиться к значению
greenPencil.color
greenPencil.length
greenPencil.weight


let agesAndNames = ["Misha": 29, "Kostya": 90, "Mira": 30]
var age = 0
var name = ""

for (nameInD, ageInD) in agesAndNames {
    if age < ageInD {
        age = ageInD
        name = nameInD
    }
}

age
name
