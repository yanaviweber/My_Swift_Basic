import UIKit

var str = "Hello, playground"

// ------- Lesson ---- ARC in Closures -------//

// ------ когда ставим клоужер и управляем в нем с помощью ARC,  - необходимо следить за уровнем ссылок (weak, unowned), а также указываем лист захвата значений в самом клоужере для того чтобы освободить значения

// ------ также клоужер можно ставить опционального типа , -         let closure2: () -> ()?



// ------ также клоужер можно ставить в виде свойства объекта, -
//lazy var property: (Bool) -> (Bool) = { [unowned self] (param: Bool) -> Bool in
//print(self.dog)
//return true
//}
