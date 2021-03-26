import UIKit

//Lesson ----- Ленивые свойства -----/

func bigDataProcessingFunc() -> String {
    
    return "very long process"
}

class Processing {
    let smallDataProcessing = "small data processing"
    let averageDataProcessing = "average data processing"
    
    // ленивое свойство
    lazy var bigDataProcessing = bigDataProcessingFunc() // внешняя функция которая используеться в качестве свойства класса
    
}

// оставим свойство bigDataProcessing "на потом" и инциализируцем его именно тогда когда оно будет нужно
// lazy (ленивое свойство) - по умолчанию возвращает nil, это опциональная величина

//ленивое свойство это такое свойство, - которое не инициализируется до тех пор пока к нему не обращаються

let process = Processing()
process.bigDataProcessing
process
