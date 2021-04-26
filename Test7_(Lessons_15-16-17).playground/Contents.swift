import UIKit

// ------- Lesson 15 - 16 - 17 ---- Тест 7 -------//

// --------- 1 task

let closure = {
    for _ in 0 ... 2 {
        print("tree")
    }
}

func simpleFunc(closure: () -> ()) {
    for _ in 0 ... 2 {
        closure()
    }
}
simpleFunc (closure: closure)

// Result:
// 9 раз выведено слово tree


// --------- 2 task

let numbers = [1, 4, 5, 6,  2, 7, 3, 6, 3, 4]
func foo (array: [Int], closure: (Int) -> (Bool)) -> [Int] {
    var filteredArr = [Int]()
    for value in array {
        if closure(value){
            filteredArr.append(value)
        }
    }
    return filteredArr
}

func matrix(i: Int) -> Bool {
    return i % 2 == 1
}

print(foo(array: numbers, closure: matrix))
// Result:
//[1, 5, 7, 3, 3]

// --------- 3 task

let myStat = (pushup: 10, pullup: 5, situp: 15)
print("pushup: \(myStat.pushup), pullup: \(myStat.1), situp:\(myStat.situp)")
// Result:
//pushup: 10, pullup: 5, situp:15


// --------- 4 task

//var x = 15
//x = nil
//if let y = x {
//    print(y)
//}

// Result:
// код не скомпилируется


// --------- 5 task

var x = 15
if x != nil {
    print (x)
} else {
    print("x is nil")
}

// Result:
// 15

// --------- 6 task

// может ли функция использовать в качестве возвращаемого значения кортеж (tuple))?

// Result:
// Да, функция может использовать в качестве возвращаемого значения кортеж (tuple))
