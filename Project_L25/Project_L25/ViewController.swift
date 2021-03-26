//
//  ViewController.swift
//  Project_L25
//
//  Created by Viktoriia Jane Ro on 26.03.2021.

// ----- Lesson : -------- Уровни доступа ----------


import UIKit // отдельный модуль который мы можем использовать в своем проекте


class ViewController: UIViewController {

    private let property = true
    fileprivate let anotherProperty = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(property)
        print(anotherProperty)
        
    }


}

// ----- попытка получить уровень доступа к property с помощью extension в том же исходном файле -----

//extension ViewController {
//    var someIntegerProperty: Int {
//        if property {
//            return 10
//        }
//        return 20
//    }
//}
// ----- End -----

// ----- попытка получить уровень доступа к anotherProperty с помощью extension в том же исходном файле -----

//extension ViewController {
//    var someIntegerProperty: Int {
//        if anotherProperty{
//            return 10
//        }
//        return 20
//    }
//}
// ----- End ------

class Helper {
    let vc = ViewController()
    
    var someProperty: Int {
        if vc.anotherProperty {
            return 10
        }
        
        return 20
    }
    
}
