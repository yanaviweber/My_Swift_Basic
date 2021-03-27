//
//  ViewController.swift
//  Project_L32
//
//  Created by Viktoriia Jane Ro on 27.03.2021.
//


// weak - ссылка, - позволяет переменной под этой ссылкой не иметь значения
// unowned - ссылка, - переменная под этой ссылкой должна иметь значение обязательно(часто нужно указывать инициализатор)
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // ------ пытаемся воссоздать ситуацию когда ARC не может определить что мы хотим делать. это плохо тем что наша память загромождается, и наше приложение может упасть ------------------------------

        class Person {
             var dog: Dog? // weak - говорит что ссылка слабая и памьять может уже высвобождаться с помощью ARC
            
            // ставим деинициализатор чтобы сказать что мы хотим сделать когда наш объект высвобождается
            deinit {
                print("Person is Free")
            }
        }

        class Dog {
            unowned var person: Person
            
            init() {
                self.person = Person()
            }
            
            // ставим деинициализатор чтобы сказать что мы хотим сделать когда наш объект высвобождается
            deinit {
                print("Dog is Free")
            }
        }

        let firstScope = true
        let secondScope = true

        // ----------------- FIRST --------------------------
        if firstScope{
            let person = Person()
            let dog = Dog()
            
            // ----------------- SECOND --------------------------
            if secondScope{
                
                
                // создадим два экземпляра класса
//                let person = Person()
//                let dog = Dog()
                
                
                // делаем так чтобы наш Dog и Person никогда не освобождались (перекрестные ссылки). эти объекты сейчас в памяти
                person.dog = dog
                dog.person = person
                
                print("secondScope has ended")
            }
            // ----------------- SECOND ENDS --------------------------
           
            
            
            print("firstScope has eneded")
        }
        // ----------------- FIRST ENDS --------------------------

        print("Finish")

        
        
    }


}

