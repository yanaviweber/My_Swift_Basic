import UIKit

//Lesson ----- Массивы -----/

//Массив это такая коллекция внутри которой все элементы принадлежат только одному типу, и элементы внутри массива находятся именно в том порядке в котором его поместили

var str = "Hello, playground"

let arrayOne = Array<Int>() //пустой массив
let arrayTwo = [Int]() // абсолютно альтернативная запись
var arrayThree: [Int] = [] //абсолютно идентичная запись. встречается чаще всего

//создание массива с помощью его литерала (его наполнения) без указания явного по типу
let arrayFour = [1, 2, 3, 4]

//другой способ создания массива
let arrayFive = [Int](repeating: 10, count: 6)


//основные действия с массивами

arrayThree += arrayFive
arrayThree

//чему равен конкретный елемент массива
arrayFour[2]

//заменить несколько елементов массива на один елемент
arrayThree[1...3] = [15]
arrayThree

//count - определение колличества элементов в массиве
arrayThree.count

//колличество итераций в массиве
arrayThree.count - 1

//добавить елементы в массив
arrayThree.append(100) //по умолчанию элемент добавляется в конец массива

//чтобы добавить элемент в любое другое место массива, нужно:
arrayThree.insert(105, at: 2) //вставляем элемент 105 по индексу 2

//чтобы удалить элементы, нужно
arrayThree.remove(at: 4) // удаляем элемент по конкретному индексую После того как мы удаляем элемент, он возвращается нам из этого метода
arrayThree

//для удаления первого и/или послпеднего элемента
arrayThree.removeFirst() //удалили первый элемент массива
arrayThree


let deletedValue = arrayThree.removeLast() //удалили последний элемент массива
//можем где-то использовать удаленное значение
//let deletedValue = arrayThree.removeLast()
deletedValue
arrayThree

//перемешать/перевернуть массив
arrayThree.reverse()
