import UIKit

//Lesson ----- Инструкция guard -----/

//guard прекращает работу блока кода в котором он был объявлен
// в соответствии мы можем работать не только с функциями,но и с цыклами с помощью guard

var str = "Hello, playground"

func someFunc(a: Int, b: Int){
    
    guard a == b else { return }
    //some code to run
    guard b == 11 else { return }
    //some code to run
    
    if a == b {
        //some code to run
        if b == 11 {
        //some code to run
        }
    }
}


for i in 1...5 {
    guard i != 3 else { continue }
    print(i)
}

for i in 1...5 {
    guard i != 3 else { break } // break прекращает работу цыкла вообще
    print(i)
}

for i in 1...5 {
   if i != 3 { break }
    print(i)
}
