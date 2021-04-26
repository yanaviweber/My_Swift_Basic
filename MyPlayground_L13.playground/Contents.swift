import UIKit

//Lesson ----- Циклы while, repeat-while -----/

var str = "Hello, playground"

//var timer = 5
//print("Couting down")
//

//выполняется только если условие верно
//while timer > 0 {
//    print(timer)
//    timer -= 1
//}
//
//print("Start!")




var timer = 5
print("Couting down")


//выполняется сразу без проверки итераций
repeat {
    print(timer)
    timer -= 1
} while timer > 0

print("Start!")
