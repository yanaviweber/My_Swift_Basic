import UIKit

// ------- Lesson ---- Протоколы -------//
// протокол это набор требований который предьявляеться классе, структуре и ли перечислению ( в других языках это интерфейс)
// протокол является своего рода типом, то его имя нужно писат ьс большой буквы

// можно реализовать требования протокола в расширении
// можно расширять конкретный класс, а можно расширять конкретный протокол

// протоколы мы используем для предоставления определенных требований к классу, структуре или перечислению.

// такж протоколы отлично работают с расширениями для того чтобы предоставить дефолтную реализацию для класса / структуры / или перечисления на которое они подписаны


// ----------------------------------

// можно подписать класс/структуру/перечисление сразу под несколько протоколов
// class FirmDriver: ClassA, Protocol1, Protocol2 {
//
//}

// ----------------------------------

protocol Human {
    var name: String { get }
}

protocol Driver: Human {
    var car: Bool { get }// если есть и get и set то значит нужно ставить var в объявлении свойства.
    // если есть ТОЛЬКО get, то значит нужно ставить let в объявлении свойства
    
    var license: Bool { get }
    
    func toDrive() -> Bool
    
}

extension Driver { // extension нам нужен для того чтобы переопределить дефолтные реализации нашего протокола
    
    var license: Bool { return true }
    
    var car: Bool { return true }
    
    var name: String {
        return "Viktor"
    }
    
    func toDrive() -> Bool {
        return true
    }
    
}

extension FirmDriver: Driver {
//    var name: String {
//        return "Viktor"
//    }
    
    
    var license: Bool {
        return false
    }
    
    
    
//    var license: Bool { return true }
//
//    var car: Bool { return true }
//
//    func toDrive() -> Bool {
//        return true
//    }
    
}

class FirmDriver {
    
}

//class FirmDriver: Driver{
//    let car = true
//
//    let license = true
//
//    func toDrive() -> Bool {
//        return true
//    }
    // подписываемся под протокол через ":"
//
//}

let firmDriver = FirmDriver()
firmDriver.license
