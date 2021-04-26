import UIKit

//Lesson ----- Инструкция switch -----/

var str = "Hello, playground"

let totalScore = 20

// с помощью if - else if - else

if totalScore == 10 {
    print("you're not jedi")
} else if totalScore == 20 {
    print("you're still not jedi")
} else if totalScore == 100 {
    print("you're jedi")
}


// с помощью switch

switch totalScore {
case 10, 20:
    print("you're not jedi")
    fallthrough // проваливание сквозь кейсы. для того чтобы сразу перейти в следующий кейс
case 50..<100:
    print("you're almost jedi")
case 100:
    print("you're jedi")
default:
    break
}
