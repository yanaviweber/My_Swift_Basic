import UIKit

// ------- Lesson 13 - 14 ---- Тест 6 -------//

// --------- 1 task

//var i = 3
//do {
//    print(i)
//    i = i * 2
//} while ( i < 236)

// Result:
// код не скомпилируется

// --------- 2 task

func sayHello(to name: String) -> String {
    return "Hello, \(name)!"
}
print(sayHello(to: "Alexey"))
// Result:
//Hello, Alexey!

// --------- 3 task

var i = 2
repeat {
    i = i * 2
} while (i < 56)
print(i)
// Result:
//64
