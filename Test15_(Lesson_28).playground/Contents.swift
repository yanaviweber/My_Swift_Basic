import UIKit

// ------- Lesson 28 ---- Тест 15 -------//

// --------- 1 task

struct Car {
    var name: String
}
let audi = Car(name: "Audi A6")
var mercedes = audi
mercedes.name = "Mercedes CLA"

print(audi.name)
// Result:
// Audi A6
