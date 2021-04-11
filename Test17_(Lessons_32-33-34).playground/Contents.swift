import UIKit

// ------- Lesson 32-33-34 ---- Тест 17 -------//

// --------- 1 task

/*
 Придумайте любую цепочку зависящих друг от друга действий, как это было представлено в видео. Напишите опциональную последовательность и то же самое решение через инструкцию guard.*
*/

class Object {
    //var functionalOfPc: SummaryFunctionality? = nil
    var functionalOfPc: SummaryFunctionality? = SummaryFunctionality()
    //var computer: [Computer]? = nil
    var computer: [Computer]? = [Computer()]
    //var hardDisk: [HardDisk]? = nil
    var hardDisk: [HardDisk]? = [HardDisk()]
    
    // решение с помощью guard
    func checkPropertyFunctionalOfPc() {
        guard functionalOfPc != nil else {
        print("Functional of Pc is nil")
        return
    }
        print("Значение \" Functional Of Pc \" уже есть")
    }
   
    func checkPropertyComputer() {
        guard computer != nil
        else {
            print("Property \" Computer \" is nil")
            return
        }
        print("Значение \" Computer \" уже есть")
    }
    
    func checkPropertyHardDisk() {
        guard hardDisk != nil
        else {
            print("Property \" Hard Disk \" is nil")
            return
        }
        print("Значение \" Hard Disk \" уже есть")
    }
}

class Computer {
    var name = "Macbook"

    func process () -> () {
        print("I help for developers in their learning and working practice")
    }
}

class SummaryFunctionality {
    //var ramOfPc: RAM? = nil
    var ramOfPc: RAM? = RAM()
    //var graphicsCard: Graphic? = nil
    var graphicsCard: Graphic? = Graphic()
    //var hardDisk: HardDisk? = nil
    var hardDisk: HardDisk? = HardDisk()
    //var centralProcessor: CentralProcessor? = nil
    var centralProcessor: CentralProcessor? = CentralProcessor()
    
    // решение с помощью guard
    func checkPropertyRamOfPc() {
        guard ramOfPc != nil
        else {
            print("Property \" Ram Of Pc \" is nil")
            return
        }
        print("Значение \" Ram Of Pc \" уже есть")
    }
    
    func checkPropertyGraphicsCard() {
        guard graphicsCard != nil
        else {
            print("Property \" Graphics Card \" is nil")
            return
        }
        print("Значение \" Graphics Card \" уже есть")
    }
    
    func checkPropertyHardDisk() {
        guard hardDisk != nil
        else {
            print("Property \" Hard Disk \" is nil")
            return
        }
        print("Значение \" Hard Disk \" уже есть")
    }
    
    func checkPropertyCentralProcessor() {
        guard centralProcessor != nil
        else {
            print("Property \" Central Processor \" is nil")
            return
        }
        print("Значение \" Central Processor \" уже есть")
    }
}

class RAM {
    var quantityOfRam = "16 Gb"
    
    func showParamOfRam () -> String {
       return("This machine has \(quantityOfRam) RAM.")
    }
}

class Graphic {
    var graphicsCard = "GeForce"
    
    func showParamOfGraphic () -> String {
       return("This machine has \(graphicsCard) graphics params.")
    }
}

class HardDisk {
    var sizeOfHard = 1000
    
    func showParamOfHardDisk () -> String {
       return("This machine has \(sizeOfHard) hard disk params.")
    }
}

class CentralProcessor {
    var informationOfCpu = "Intel Core i7 3.9GHz"
    
    func showParamOfCentralProcessor () -> String {
       return("This machine has \(informationOfCpu) central processor params.")
    }
}

let newPC = Object()
// вывод инфы из свойств и метода
let mainDataOfRam = newPC.functionalOfPc?.ramOfPc?.quantityOfRam
print(mainDataOfRam!)
let showDisplayDataOfRam = newPC.functionalOfPc?.ramOfPc?.showParamOfRam()
print(showDisplayDataOfRam!)
// проверка на nil и значения опциональных свойств классов
newPC.checkPropertyComputer()
newPC.checkPropertyHardDisk()
newPC.checkPropertyFunctionalOfPc()
newPC.functionalOfPc?.checkPropertyGraphicsCard()

// добавление нового объекта типа Computer
var arrayOfPC = newPC.computer
arrayOfPC?.append(Computer())
arrayOfPC



// некий  массив с двумя хардами
let somePC = Object()

let mainDataOfHard = newPC.functionalOfPc?.hardDisk?.sizeOfHard
print(mainDataOfHard!)

// вывод инфы из свойств и метода
let showDisplayDataOfHard = newPC.functionalOfPc?.hardDisk?.showParamOfHardDisk()
print(showDisplayDataOfHard!)


// добавление нового объекта типа HardDisk
var arrayOfHardDisk = somePC.hardDisk
arrayOfHardDisk?.append(HardDisk())
arrayOfHardDisk

// мои личные эксперименты
// создать массив из двух ранее созданных, перебрать его и вывести на екран

// добавляем массив с двух жестких дисков в массив с нашим Computer
var createComputer: [Any] = []
createComputer.append(arrayOfHardDisk as Any)
createComputer.append(arrayOfPC as Any)

//for i in createComputer {
//    for i in ..
//}

//var createComputer = Array (zip(arrayOfPC!, arrayOfHardDisk!))
//createComputer
