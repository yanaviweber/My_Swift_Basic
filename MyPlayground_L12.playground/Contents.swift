import UIKit

//Lesson ----- Цикл for-in -----/

var str = "Hello, playground"

for i in 1...5 {
    print(i)
}


for index in 4...5 {
    print(index)
}

let array = [1,2,3,4]
let arrayOfStrings = ["a", "b", "c"]

let string = "some string"


// данный код не работает в текущей версии Xcode и Swift, а точнее метод characters в системе не существует сам по себе как в лекции
//for char in string.characters {
//    print(char)
//}

let nameAndFingers = ["Ivan": 18, "Svetlana": 18, "Nadejda": 15]
for (name, numberOfFingers) in nameAndFingers {
    print("Pyro name is \(name) and number of fingers is \(numberOfFingers)")
}

// вывести цикл в виде индекс -> значение
for (index, value) in array.enumerated(){
    print(index, value)
}

// вывести цикл с шагом 5
for i in stride(from: 0, through: 10, by: 5){
    print(i)
}
