import UIKit

// ------- Lesson 27 ---- Тест 14 -------//

// --------- 1 task

enum Weather {
    case sunny
    case rainy
    case windy(speed: Int)
}

let today: Weather = .windy(speed: 12)

switch today {
case .sunny:
    print("Let's go for a walk")
case .rainy:
    print("Don't forget to take an umbrella")
case .windy(let speed) where speed >= 12:
    print("You should stay at home")
default:
    print("It is a bit windy")
}

// Result:
// You should stay at home

