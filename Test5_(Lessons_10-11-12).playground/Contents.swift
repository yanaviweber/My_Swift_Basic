import UIKit

// ------- Lesson 10 - 11 - 12 ---- Тест 5 -------//

// --------- 1 task

var names = ["Alen", "Mikle"]
for name in names {
   // name = name.uppercased() // код не скомпилируется потому что нет явного объявления типа переменной, и оно выдает ошибку что это let name  по умолчанию(а let нельзя изменять)
   // должно быть вот так
    let name = name.uppercased()
    print("How are you, \(name)?")
}
// Result:
//How are you, ALEN?
//How are you, MIKLE?

// --------- 2 task

//for i in 4...1 {
//    print(i)
//}

// Result:
// произойдет краш и фатальная ошибка

// --------- 3 task

for i in 1...4 {
    print(i)
}

// Result:
//4
//3
//2
//1


// --------- 4 task
let x = 1
switch x {
case 0:
    print("x равен 0")
case 1:
    print("x равен 1")
default:
    print("x равен другому значению")
}

// Result:
//x равен 1

// --------- 5 task

let namesSecond = ["Jordan", "Alexa", "Siri", "Alice"]
for nameSecond in namesSecond where nameSecond.hasPrefix("A"){
    print(nameSecond)
}
// Result:
//Alexa
//Alice
