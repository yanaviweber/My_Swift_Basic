import UIKit

// --- Test 4 --- Lessons 8, 9 ------------------

var str = "Hello, playground"

// -----


//код не скомпилириуется. Нужно указать типа элементов в сете при объявлении сета
// var animals = Set()

var animals = Set<String>()
animals.insert("Dogs")

animals.insert("Cats")

animals.insert("Elephants")

animals.insert("Dogs")
animals
print(animals.count)


// -----

let titles = ["Queen", "Rocky", "Chack", "Ice cream"]
if let title = titles.last {
    print(title)
}


// -----

let first = true
if first {
    print("Exactly it is true!")
} else {
    print("Maybe it is false")
}


// -----

let names = ["Jordan", "Alexa", "Siri", "Alice"]
let name = names[1]
print("Best wishes, \(name)!")
