import UIKit

// ------- Lesson 37-38 ---- Тест 19 -------//

// --------- 1 task

/*
 
 Используя протоколы написать программу «Ферма».
 Задача:
 программа «Ферма» выполняет простые действия: «собирать урожай», «поливать», «окучивать», «продавать», «удобрять» и выводит их в консоль.

 Алгоритм:
 1) Создаем класс «Ферма1» (например)
 2) Создаем протоколы действий
 3) Этим протоколам задаем методы и свойства.
 4) Активируем протоколы для класса «Ферма1»
 5) Реализуем все методы и свойства протоколов в классе
 6) Выводим результаты в консоль.

 Например: «Протокол «Собирать урожай» активирован. И уже тут оставляйте те действия, реплики работников, которые они реализуют во время сборки урожая, как пример.*
*/



protocol Animals { // протокол животных
    var sheepCount: Int { get }
    var chickenCount: Int { get }
    var horseCount: Int { get }

    func descriptionOurAnimals() -> String
}

protocol Fertilize { // удобрять
    var vitaminsKilo: Int { get }
    var vitaminsName: String { get }

    func fertilizeActionInAday() -> String
}

protocol ToSale { // продавать
    var carToSale: Int { get }
    var boxesToSale: Int { get }

    func saleActionInAday() -> String
}


protocol Spud { // окучивать
    var hoeThing: Int { get }

    func spudActionInAday() -> String
}


protocol ToWater { // поливать
    var waterLitres: Int { get }

    func waterActionInAday() -> String
}

protocol Harvest { // собирать урожай
    var cucembers: Int { get }
    var tomatos: Int { get }
    var pears: Int { get }
    var apples: Int { get }

    func toCompleteVegetablesAndFruits() -> String
}

// требования протокола в расширении
extension Animals {
    // extension for protocol (домашние питомцы)
    // START --- pets
    // дефолтные значения по домашним питомцам
    var catCount: Int {
        return 2
    }
    
    var dogCount: Int {
        return 1
    }
    
    var catNames: String { return ("Marsik, - 4 years, and Kvosha, - 4 years") }
    var dogNames: String { return ("Chappi, 3 years") }

    func descriptionPets() -> String {
        return ("My pets are cats: \(catNames). And dogs: \(dogNames).")
    }
    
    // END --- pets

}

//extension for a class
extension Farm1{

    var tomatosCostOnPieceInUah: Int {
        return 20
    }

    var cucembersCostOnPieceInUah: Int {
        return 10
    }

    var pearsCostOnPieceInUah: Int {
        return 35
    }

    var applesCostOnPieceInUah: Int {
        return 30
    }

    var account: Int{
        return 1
    }

    var accountName: String{
        return ("Natalja Petrova")
    }

    var accountExperience: String{
        return ("My proffessional experience is 5 years.")
    }

    func countingMoney() -> String {
        return("We have this money summary: sold tomatoes cost - \(tomatosCostOnPieceInUah * tomatos), sold cucembers cost - \(cucembersCostOnPieceInUah * cucembers), sold pears cost - \(pearsCostOnPieceInUah * pears), sold apples cost - \(applesCostOnPieceInUah * apples). ")
    }

}


extension Farm1: Animals {
    
    var sheepCount: Int {
        return 20
    }

    var chickenCount: Int {
        return 20
    }

    var horseCount: Int {
        return 2
    }
    
    // START --- pets ------ переопределение значений - домашние питомцы
    var catCount: Int {
        return 4
    }
    
    var dogCount: Int {
        return 3
    }
    
    var catNames: String { return ("Marsik, - 4 years, and Kvosha, - 4 years, and their children: - 1) Bunia - 1 month, 2) Pusik - 1 month") }
    var dogNames: String { return ("Chappi, 3 years, and his children: - 1) Topik - 2,5 months, 2) Basta - 2,5 months") }

    func descriptionPets() -> String {
        return ("My pets are cats: \(catNames). And dogs: \(dogNames).")
    }
    
    
    // END --- pets
    
    var summaryAnimals: Int {
        return sheepCount + chickenCount + horseCount + catCount + dogCount
    }

    func descriptionOurAnimals() -> String {
        return ("We have \(sheepCount) sheeps, \(chickenCount) chickens, \(horseCount) horses, \(catCount) cats, \(dogCount) dogs. Summary we have \(summaryAnimals) animals.")
    }
    
}
// END Extensions

// Ферма
class Farm1: Harvest, ToWater, Spud, ToSale, Fertilize{
    
    var vitaminsKilo = 2
    var vitaminsName = "Fertis"

    func fertilizeActionInAday() -> String {
        return("Today we fertilized our crop with \(vitaminsKilo) kilo of \(vitaminsName) vitamins.")
    }

    var carToSale = 3

    var boxesToSale = 40

    func saleActionInAday() -> String {
        return ("Today we sold our crop with \(carToSale) cars and in \(boxesToSale) boxes.")
    }

    var hoeThing = 8

    func spudActionInAday() -> String {
        return ("Today we worked on our farm by \(hoeThing) hoes")
    }

    var waterLitres = 100

    func waterActionInAday() -> String {
        return ("Today we watered our crop by \(waterLitres) water litres.")
    }

    var cucembers = 80

    var tomatos = 100

    var pears = 45

    var apples = 120

    func toCompleteVegetablesAndFruits() -> String {
        return ("We have: cucembers - \(cucembers), tomatos -  \(tomatos), pears - \(pears), apples - \(apples) in a day.")
    }

    func showDescriptionAboutWorkInAday() -> String {
        return("Our harvest: - \(toCompleteVegetablesAndFruits()), summary of our work of water: - \(waterActionInAday()), summary of our work of spud actions: - \(spudActionInAday()), summary of our work of sale actions: - \(saleActionInAday()), summary of our work of fertilize actions: - \(fertilizeActionInAday()).")
    }

}
//
// show in console
// не показывает в консоли ничего :((( что я делаю не так?
// решено: не показываало в консоли потому что определила неправильно extension протокола Animals и внутрь extension вложила функционал самого Animals a не части по Pets. Плюс нужно было переопределить значения этого extension в части Pets с помощью extensiom Farm1 который подписан под протокол Animals
//
let myFarmObject = Farm1()
myFarmObject.apples
myFarmObject.waterActionInAday()
myFarmObject.spudActionInAday()
myFarmObject.saleActionInAday()
myFarmObject.fertilizeActionInAday()
myFarmObject.showDescriptionAboutWorkInAday()

myFarmObject.accountExperience
myFarmObject.countingMoney()

myFarmObject.chickenCount

myFarmObject.descriptionOurAnimals()

let myAnimals = myFarmObject.descriptionOurAnimals()
print(myAnimals)

let myHarvest = myFarmObject.toCompleteVegetablesAndFruits()
print(myHarvest)

let myPets = myFarmObject.descriptionPets()
print(myPets)

myFarmObject.boxesToSale

