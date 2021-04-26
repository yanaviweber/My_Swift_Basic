import UIKit

// ------- Lesson ---- Новые фишки в Swift 5-------//

// ----- @unknown свойство и ключевое слово вохле кейса.
// ----- Мы его употребляем тогда когда хотим увидеть предупреждение в коде что кто-то или мы сами сделали больше инструкций чем рассчитывали изначально в кейсе, что не все кейсы у нас используються и типа "обрати внимание!"

enum Planet {
    case earth, mars, neptune, jupiter, venus
}


func action(onPlanet planet: Planet){
    switch planet {
    case .earth:
        print("Go back to Earth")
    case .mars:
        print("Ilon Musk will go there first")
    case .neptune:
        print("Can't say much of it")
    case .jupiter: break
    case .venus: break
    @unknown default:
        print("Default case")
    }
}


// ------- проверка на четность
// было ранее
func isEven(number: Int) -> Bool {
    if number % 2 == 0 { // проверка на четность с помощью математического уравнения
        return true
    }
    
    return false
}


// стало сейчас
func isEvenExample2(number: Int) -> Bool {
    if number.isMultiple(of: 2) {  // проверка на четность с помощью нового свойства
        return true
    }
    
    return false
}

isEven(number: 10)
