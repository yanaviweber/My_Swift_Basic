import UIKit
// ------- Lesson 8 - 9 ---- Тест 4 -------//


// --------- 1 task
// не скомпилируется. не указан тип Сет-а
//var animals = Set()

// должно быть вот так
var animals = Set<String>()
animals.insert("Dogs")
animals.insert("Cats")
animals.insert("Elephants")
animals.insert("Dogs")
print(animals.count)


// --------- 2 task
let titles = ["Geen", "Rocky", "Chack", "Ice cream"]
if let title = titles.last {
    print(title)
}

// Result: Ice Cream


// --------- 3 task

let first = true
if first {
    print("Exactly it is true!")
} else {
    print("Maybe it is false")
}

// Result: Exactly it is true!


// --------- 4 task

let names = ["Jordan", "Alexa", "Siri", "Alice"]
let name = names[1]
print("Best wishes, \(name)!")

// Result: Best wishes, Alexa!
