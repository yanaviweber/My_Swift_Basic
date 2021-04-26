import UIKit

// ------- Lesson 24 ---- Тест 11 -------//

// --------- 1 task
/*У нас есть пациент, который лежит в больнице (inHospital = true) и принимает по 5 таблеток в день, ему запрещено заниматься спортом. Но как только он выписывается из больницы, то ему можно заниматься спортом и не пить таблетки. А так же у него есть свойство storyAboutHospital, которая равна пустой строке пока он не выпишется. Однако при выписке у него появляется, что рассказать друзьям.
*/
//Запишите метод, который рассказывает storyAboutHospital. *

class Patient {
    var inHospital = true {
        
        willSet(newValue) {
            print("You will finish soon your health threatment course!")
            print("Current \"hospital value\" is: \"\(newValue)\" now.")
        }
        
        didSet {
            if inHospital == false {
                doingSportLessons = true
                quantityOfPills = 0
                print("Congratulations! Welcome to your home!")
                storyAboutHospital = "I was in hospital some time and get health treatment course."
                print("\(printHistory()) \(printEatNothingPills())")
            } else {
                inHospital = true
                print("I am in hospital and \(printEatPills())")
            }
        }
    }
    
    var quantityOfPills = 5
    
    var storyAboutHospital = ""
    
    var doingSportLessons = false
    
    func printEatPills () -> (String) {
        return ("I eat \(quantityOfPills) pills every day in a day.")
    }
    
    func printEatNothingPills () -> (String) {
        return ("Also I eat nothing pills every day now.")
    }
    
    func printHistory () -> (String) {
        return("\(storyAboutHospital)")
    }
    
}


// Result:
let someMan = Patient()
someMan.doingSportLessons
someMan.inHospital


//someMan.inHospital = true  // Result 1
/*
You will finish soon your health threatment course!
Current "hospital value" is: "true" now.
I am in hospital and I eat 5 pills every day in a day.
*/



someMan.inHospital = false  // Result 2
/*
You will finish soon your health threatment course!
Current "hospital value" is: "false" now.
Congratulations! Welcome to your home!
I was in hospital some time and get health treatment course.Also I eat nothing pills every day now.
*/


someMan.doingSportLessons
