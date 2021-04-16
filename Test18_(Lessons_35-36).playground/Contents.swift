import UIKit

// ------- Lesson 35-36 ---- Тест 18 -------//

// --------- 1 task

/*
 
 Придумайте любую цепочку зависящих друг от друга действий, как это было представлено в видео. Напишите опциональную последовательность и то же самое решение через инструкцию guard.*

*/




// ------ Start --- subsripts class
class Driver {
    var name: String
    var age: Int
    var quantityOfDriveExperience: Int
    var driversLicense: String
    
    init(name: String, age: Int, quantityOfDriveExperience: Int, driversLicense: String) {
        self.name = name
        self.age = age
        self.quantityOfDriveExperience = quantityOfDriveExperience
        self.driversLicense = driversLicense
    }
    
    func descriptionOfDriver() -> String {
        return("Name: - \(name), Age: - \(age), Quantity Of Drive Experience: - \(quantityOfDriveExperience), Drivers License: - \(driversLicense)")
    }
}

class TeamOfDrivers {
    
    var team: [Driver] = [Driver]()
    
    init () {
        team.append(Driver(name: "Ivan", age: 25, quantityOfDriveExperience: 5, driversLicense: "B"))
        team.append(Driver(name: "Maxim", age: 35, quantityOfDriveExperience: 11, driversLicense: "B"))
        team.append(Driver(name: "Vika", age: 29, quantityOfDriveExperience: 0, driversLicense: "Nothing"))
        team.append(Driver(name: "Anatoliy", age: 53, quantityOfDriveExperience: 35, driversLicense: "A, B, C"))
    }
    
    subscript (index: Int) -> Driver{
        get {
            return team[index]
        }
        
        set(newValue) {
            team[index] = newValue
        }
    }
    
}
// ------ END --- subscript class


var myDriversTeam: TeamOfDrivers = TeamOfDrivers()
var driverForCompany: Driver = myDriversTeam[3]
print("Driver's name: \(driverForCompany.name), and license: \(driverForCompany.driversLicense)")

// ------- classical access
myDriversTeam.team[1]

// ------- subscript access
myDriversTeam[1]

//another variant
//extension TeamOfDrivers: CustomStringConvertible {
//    var description: String {
//        return ("\(team[1])")
//    }
//}
//end of another variant

var secondDriver: Driver = myDriversTeam[1]
print(secondDriver.descriptionOfDriver())
//print("Driver's name: \(secondDriver.name), and license: \(secondDriver.driversLicense)")

// ------- START --- Part 1 --- Errors scenaries with enum
enum PossibleErrors: Error{
    case notInStock
    case notEnoughMoney
}
// ------- END --- Part 1 --- Errors scenaries with enum

// ------- START --- Additional Service for Car
class AdditionalTypeOfDrivesForms {
    var serviceOfCar: ServiceCenter? = ServiceCenter()
    var newDriver: [Driver]? = [Driver]()
    var washCar: [CleaningPackOfMonth]? = [CleaningPackOfMonth()]
    
}
// ------- END --- Additional Service for Car


struct Car {
    var year: Int
    var type: String
    var color: String
    var price: Int
    var count: Int
    
}

class Garage {
    var ourMoney = 900
    
    var uniqueCarCollection = ["Toyota":Car(year: 2017, type: "Passenger car", color: "Black", price: 200, count: 2), "BMW X7":Car(year: 2020, type: "Crossover", color: "White", price: 350, count: 3), "Ford Focus":Car(year: 2018, type: "Passenger car", color: "Blue-grey", price: 250, count: 5)]
    
    
        // ------- START --- Part 2 ---  Logic of Errors inside collection of Cars
    func getTheCar(withName: String) throws {
        guard var car = uniqueCarCollection[withName] else {
            throw PossibleErrors.notInStock
        }
                
        guard car.count > 0 else {
            throw PossibleErrors.notInStock
        }
        
        guard car.price <= ourMoney else {
            throw PossibleErrors.notEnoughMoney
        }
        // ------- END --- Part 2 --- Logic of Errors inside collection of Cars
        
        ourMoney -= car.price
        car.count -= 1
        uniqueCarCollection[withName] = car
        print("You got the Car: \(withName)")
    }
}

let carCollection = Garage()

try? carCollection.getTheCar(withName: "BMW X7") // --- get car BMW X7 by our first car

carCollection.ourMoney
carCollection.uniqueCarCollection

// ------- START --- Part 3 --- Errors scenarios with do ... catch for description this errors
do {
    try carCollection.getTheCar(withName: "Toyota") // --- get car Toyota by our second car
} catch PossibleErrors.notInStock {
    print("Car is not in stock")
} catch PossibleErrors.notEnoughMoney {
    print("You don't have enough money for to buy car")
}

carCollection.ourMoney
// ------- END --- Part 3 --- Errors scenarios with do ... catch for description this errors

// ----- START --- trying to try in do ... catch implementation with different input parameters
func writeYear() throws -> Int{
    return 2021
}
let x = try?writeYear()

let y: Int?
do {
    y = try writeYear()
}catch{
    y = nil
}
// ------- END --- trying to try in do ... catch implementation with different input parameters

// ------- START --- for additional features for my car
class Wheel {
    var diameter = 50
    
    func functionality() -> String {
        return("I help to drive everywhere.")
    }
}


class GPSnavigator {
    var nameOfApp = "Hudway go: Навигатор с HUD"
    var producer = "HUDWAY LLC"
    var platform = "iOS"
    
    func descriptionParameters() -> String{
        return("Название приложения: - \(nameOfApp), производитель: -\(producer), платформа поддержки: - \(platform)")
    }
    
    func descriptionFunctionality() -> String {
        return ("I help to know where the driver is going.")
    }
    
    lazy var showParams = descriptionParameters()
}

class ServiceCenter {
    var name = "Oiler"
    var webAddress = "https://oiler.ua/"
    
    var wheel: Wheel? = Wheel()
    var gpsDevice: GPSnavigator? = GPSnavigator()
    
    func descriptionFunctionality() -> String{
        return("We \(name) help car owners in analizing the condition of their car and be happy")
    }

}

class CleaningPackOfMonth {
    var handWashingPrice = 2000
    var expressWashingPrice = 1400
    var washLocation = "Kiev"
    var nameOfWashCenter = "Drive"
    
    func descriptionOfPack () -> String {
        return("Pack in car washing center \(nameOfWashCenter) in city \(washLocation )on month is: hand-washing - \(handWashingPrice) uah, express-washing - \(expressWashingPrice) uah ")
    }
}
// ------- END --- for additional features for my car

// ------- Optional chain
let newCarComplex = AdditionalTypeOfDrivesForms()

let myCarEquipment = newCarComplex.serviceOfCar?.gpsDevice?.nameOfApp
print(myCarEquipment!)

var myNewLicenseDriver = newCarComplex.newDriver
myNewLicenseDriver?.append(Driver(name: "Oleh", age: 28, quantityOfDriveExperience: 9, driversLicense: "A,B"))
myNewLicenseDriver

// ------- adding a new object (bought another monthly subscription for a car wash)
var myNewServiceForMyCar = newCarComplex.washCar
myNewServiceForMyCar?.append(CleaningPackOfMonth())
myNewServiceForMyCar

