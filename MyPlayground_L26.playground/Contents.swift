import UIKit

//Lesson ----- Алиасы типов -----/

// задать алиас для заранее обьявленной переменной (другие единицы или тип)
typealias Meter = Int

let length: Meter = 50  // ------ стало
// let length = 50  // ----- было

let length1 = 20

let sum: Meter = length + length1



// как можно заменить тип кортежа
typealias DoubleInteger = (Int, Int)

let someConstant: DoubleInteger = (1, 2)


// как можно заменить тип словаря
typealias DictionaryType = [String: Int]
//let dictionary = [String]()
var dictionary: DictionaryType = [:]
dictionary["Apartment123"] = 123
dictionary
