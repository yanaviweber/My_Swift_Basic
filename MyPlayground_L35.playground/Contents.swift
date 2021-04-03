import UIKit

// ------- Lesson ---- Обработка ошибок и отложенные действия -------//

// когда мы получаем уведомление что невозможно выполнить операцию, то значит:
// такого файла не существует,
// такой файл невозможен для чтения,
// у нас нет соответствующих прав
// путь к указанному файлу указанный не верно
// у нас нет связи с диском

// если мы хотим точно знать почему у нас невозмозможно чтение этого файла, - то нам нужно для каждого соответствующего  случая написать свою ошибку, а затем соответствующие ее обработки. Для этого и существует ArrayHandler


// Структуры имеют такую особенность: что когда мы НЕ УКАЗЫВАЕМ никаких инициализаторов, у нас автоматически имеется дефолтный почленный инициализатор

enum PossibleErrors: Error {
    case notInStock
    case notEnoghMoney
}

struct Book {
    let price: Int
    var count: Int
    
}

class Library {
    var deposit = 11
    //     var libraryBooks = ["Book1": Book(price: 10, count: 1)] ------ почленный инициализатор который Book(price: 10, count: 1)
    var libraryBooks = ["Book1": Book(price: 10, count: 1), "Book2": Book(price: 11, count: 0), "Book3": Book(price: 12, count: 3)]
    
    func getTheBook(withName: String) throws { // создаем метод которые генерирует ошибку с помощью ключевого слова throws
        
        guard var book = libraryBooks[withName] else {
            throw PossibleErrors.notInStock //для того чтобы сгенерировать все-таки ошибку, нам нужно написать enum в глобальной области видимости
        }
        
        guard book.count > 0 else {
            throw PossibleErrors.notInStock
        }
        
        
        guard book.price <= deposit else {
            throw PossibleErrors.notEnoghMoney
        }
        
        deposit -= book.price // уменьшаем наш депозит на стоимость книги
        book.count -= 1 // уменьшаем колличество книг в библиотеке
        libraryBooks[withName] = book // обновляем библиотеку
        print("You've got the Book \(withName)") // выводим сообщение что мы получили такую-то книгу
    }
    
}

let library = Library()
try? library.getTheBook(withName: "Book1")
// ------- try? (опциональное try) использовать только в том случае когда мы не знаем что метод у нас выполнится или нет, и когда в случае "либо мы получаем что-то в знаечнии, либо не получаем что-то в значение -------
// try! library.getTheBook(withName: "Book1")
// ------- try! (принудительное try) использовать только в том случае когда мы уверенны на все 100% что метод у нас выполнится -------

library.deposit
library.libraryBooks

// ------- обычный try используется для того чтобы поместить его в do - catch  блок -------
do {
    try library.getTheBook(withName: "Book1")
} catch PossibleErrors.notInStock{ // в catch мы должны описать какую ошибку мы пытаемся поймать
    print("Book is not in stock")
} catch PossibleErrors.notEnoghMoney {
    print("Not enough money")
}


// альтернативная запись для опционального try (try?)

func doConnection() throws -> Int {
    return 10
}
let x = try? doConnection()
//если doConnection отрабатывает нормально, - то мы получаем 10. Если doConnection не отрабатывает и генерирует какую-то ошибку, - то мы получаем nil. И вот эту альтернативную запись мы можем запись по-другому в другой альтернативе:
let y: Int?

do {
    y = try doConnection()
} catch {
    y = nil
}


// deffort actions - отложенные действия
// отложенные блоки кода позволяют нам выполнить какие-то блоки кода при выходе из зоны видимости

// это нужно для того чтобы высвободить вовремя память при закрытии того или иного файла который работал над теми или иными процессами

var attempt = 0
func whatewerFunc(param: Int) -> Int {
    
    // блоки defer выполняються ПОСЛЕ того как выподлняться блоки switch
    defer { // defer - ключевое слово для блока который работает с отложенными действиями
        // потом выполниться вот этот блок вторым после предыдущего
        attempt += 2
    }
    defer { // после SWITCH сразу выполниться сначала вот этот блок
        attempt *= 10
    }
    
    switch param { // сначала самыми первыми вполняться эти инструкции
    case 0: return 100
    case 1: return 200
    default: return 400
    }
}

whatewerFunc(param: 1)
attempt
