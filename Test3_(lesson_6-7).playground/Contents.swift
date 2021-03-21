import UIKit

// --- Test 3 --- Lessons 6, 7 ------------------

var str = "Hello, playground"


// код не скомпилируется. нужно поменять let на var.
//let names = [String]()

var names = [String]()
names.append("Sarah")
names.append("John")
names.append("Misha")

// -----

let text = ["hello", "world", "!"]
print(text[1])

// -----

// код не скомпилируется. нужно поменять let на var.
//let numbers = [1, 4, 8]

var numbers = [1, 4, 8]
numbers += [4]

// -----

let first = ["Chicago", "Moscow"]
let second = ["Apple", "Xiaomi"]
let third = first + second


// -----
//код не скомпилируется. нужно указать тип значений и ключей в словаре
var age: Int = 15

//var dictionary = Dictionary()
var dictionary = Dictionary<String,Int>()

dictionary["Alex"] = 25
dictionary["Bob"] = 34
dictionary.removeValue(forKey: "Alex")
print(dictionary)
