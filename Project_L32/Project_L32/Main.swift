//
//  main.swift
//  Project_L32
//
//  Created by Viktoriia Jane Ro on 27.03.2021.
//

import UIKit

// ------ пытаемся воссоздать ситуацию когда ARC не может определить что мы хотим делать. это плохо тем что наша память загромождается, и наше приложение может упасть ------------------------------

//class Person {
//    var dog: Dog?
//
//    // ставим деинициализатор чтобы сказать что мы хотим сделать когда наш объект высвобождается
//    deinit {
//        print("Person is Free")
//    }
//}
//
//class Dog {
//    var person: Person?
//
//    // ставим деинициализатор чтобы сказать что мы хотим сделать когда наш объект высвобождается
//    deinit {
//        print("Dog is Free")
//    }
//}
//
//let firstScope = true
//let secondScope = true
//
//// ----------------- FIRST --------------------------
//if firstScope{
//
//
//    // ----------------- SECOND --------------------------
//    if secondScope{
//
//
//        // создадим два экземпляра класса
//        let person = Person()
//        let dog = Dog()
//
//        print("secondScope has ended")
//    }
//    // ----------------- SECOND ENDS --------------------------
//
//
//
//    print("firstScope has eneded")
//}
//// ----------------- FIRST ENDS --------------------------
//
//print("Finish")
