import UIKit

//Lesson ----- Типы AnyObject и Any -----/

class A {
    

}

class B {
    
    
}

class C {
    
    
}

let a = A()
let b = A()
let c = A()
let d = B()
let e = C()

struct D {
    
    
}

let f = D()

enum E {
    case a
    case b
}

let g = E.b

// AnyObject это тип обозначающий экземпляр любого класса (структуры тода нельзя вставлять!!!!
let array: [AnyObject] = [a, b, c, d, e]

// Any может содержать любой тип, включая структуры и булевы значения, и даже любые значения кроме nil
let arrayTwo: [Any] = [a, b, c, d, e, f, g, true, "String", 0.95, 5 + 4]

// разложить наш массив по различным типам

for i in arrayTwo {
    switch i {
    case let item as Int:  // ТОЛЬКО в инструкции switch оператор as (приведение типов) используетс ябез каких-либо знаков ! или ? ----------------------
        print("This is Int")
    case let item as String:
        print("This is String")
    default:
        print("Other type")
    }
}

