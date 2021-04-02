//
//  ViewController.swift
//  Project_L33
//
//  Created by Viktoriia Jane Ro on 03.04.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // --------  //Lesson ----- ARC in Closures -----/
        
        let firstScope = true

        
        // person class
        class Person {
            var dog: Dog?
            var closure3: (() -> ())? // когда мы будем обращаться к этомк свойству, у нас будет образовываться цикл сильных ссылок
            
            // второй тип как в обьекте сделать цикл сильных ссылок в клоужере. поставить unowned чтобы высвободить значения с клоужера
            lazy var property: (Bool) -> (Bool) = { [unowned self] (param: Bool) -> Bool in
                print(self.dog)
                return true
            }
            
            init() {
                dog = Dog(person: self) // инициализация свойств самого Person в виде собаки
            }
            
            deinit {
                print("person is free")
            }
        }

        
        // dog class
        class Dog {
            unowned var person: Person
            
            init(person: Person) {
                self.person = person
            }
            
            deinit {
                print("dog is free")
            }
        }

        
        let closure1: () -> ()? //ставим клоужер в виде опционального типа
        let closure2: () -> ()?
        // ----------------- FIRST --------------------------
        if firstScope{
               
            print("firstScope has STARTED<--------<-------1")
            
            let person = Person()
            let dog = person.dog
            
            // собака в виде слабой weak ссылки
            closure1 = { [weak dog] in //слабая ссылка на dog для того чтобы его освободить
                print(dog)
            }
            
             // человек в виде unowned ссылки ( в самом person никогда не будет значение nil, а значит unowned здесь сработает)
            closure2 = {[unowned person] in
                print(person)
            }

            person.closure3 = { [unowned person] in  // укажем лист захвата (для освобождения нашего Person и нашего Dog)
                print(person)
                
        
            // lazy свойство становиться не nil когда мы впервые обращаемся с вызовом этого свойства
                person.property(true)
                
            }
            
            print("firstScope has ENDED-------->------->1")
            
        }
        // ----------------- FIRST ENDS --------------------------

        print("THE END")
        
        
//        var x = "a"
//
//        let closure = {[x] () -> () in  // указываем лист захвата в [x]Б листа захвата значений которые захватывать мы не хотим
//            print(x)
//        }
//
//        closure()
//
//        x = "b"
//
//        closure()
        
    }


}

