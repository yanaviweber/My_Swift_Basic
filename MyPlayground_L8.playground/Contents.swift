import UIKit

//Lesson ----- Множества( Сеты ) -----/

// Хранят просто значения. Не упорядочены. Не пары ключ - значение. Нельзя обратиться по индексу (индекса нет).

// Сеты содержат только значения одного типа. Они уникальны. Нельзя создать сет с одинаковыми значениями.

var str = "Hello, playground"

// создание сета
let setOne = Set<String>()
let setTwo:  Set<String> = []
var setThree: Set = [1, 2, 3]


// добавить новый элемент в сет
setThree.insert(5)
setThree.insert(6)
setThree.insert(7)


// проверить является ли пустым сет
setThree.isEmpty


// посчитать колличество элементов в нашем сете
setThree.count

// удалить элемент из сета
setThree.remove(6)
setThree


// проверить есть ли указанный элемент в сете
let boolValue = setThree.contains(1)
setThree
boolValue



// методы которые позволяют сетам работать с сетами

let setFromOneToThree: Set = [1, 2, 3, 4]
let setFromFourToNine: Set = [1, 2, 4, 5, 6, 7, 8, 9]



// запишем массив в котором будут содержаться элементы которые есть как в первом Сете, так и во втором Сете (все вместе элементы с каждого сета)

let allValuesArray = setFromOneToThree.union(setFromFourToNine).sorted()



// запишем сет который покажет какие элементы есть и в первом Сете, и в Втором Сете

let commonValuesSet = setFromOneToThree.intersection(setFromFourToNine) // intersection - пересечение (какие общие значения  у них есть)



//определить различие между двух Сетов

let notRepeatedValuesArray = setFromOneToThree.symmetricDifference(setFromFourToNine).sorted()




//массив который содержит элементы первого сета, и только те элементы, которые не повторяются во втором сете

let subtractedValuesArray = setFromOneToThree.subtracting(setFromFourToNine).sorted()
