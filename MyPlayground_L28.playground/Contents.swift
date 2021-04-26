import UIKit

//Lesson ----- Структуры -----/

// структуры не умеют наследоваться так как классы, не умеют наследовать свойства и методы
// класс являеться ссылочным типом. Структуры являються типом значения

// ----- класс ----------------------------------
// классы хранятся в какой-то определенной ячейке памяти. К классу можно обратится по ссылке. классы везде раздают свою "визитку", и говорят "вы меня можете найти по этому адресу"

class MyFirstSite {
    // свойства
    var siteName = "barva.tech"
    let visitsToday = 1000
    let visitsYesterday = 1000
    
    // вычисляемое свойство
    var visitsTomorrow: Int {
        return (visitsToday + visitsYesterday) / 2
    }
    
    // ленивое свойство
    lazy var someLazyProperty = 1 + 2
    
    
    // метод класса
    func description() -> String {
        return "We had \(visitsYesterday) visitors yesterday. Today we have \(visitsToday) visitors. Tomorrow we will have about \(visitsTomorrow) visitors."
    }
}

// экземпляр класса
let firstWebSite = MyFirstSite()


// функция которая позволяет изменить имя нашего класса в экземпляре класса
func changeSiteName(myfirstsite: MyFirstSite) -> MyFirstSite {
    myfirstsite.siteName = "apple.com"
    return myfirstsite
}

changeSiteName(myfirstsite: firstWebSite)
firstWebSite.siteName


// ----- структура ----------------------------------
// когда мы хотим передать куда-то структуру, то структура не дает свою "визитку" как это делает класс, - она дает всю свою копию и говорит нам "на те дубликат меня, забирайте, но меня не трогайте"


struct MySecondSite {
    // свойства
    var siteName = "google.com"
    let visitsToday = 1000
    let visitsYesterday = 1000
    
    // вычисляемое свойство
    var visitsTomorrow: Int {
        return (visitsToday + visitsYesterday) / 2
    }
    
    // ленивое свойство
    lazy var someLazyProperty = 1 + 2
    
    
    // метод класса
    func description() -> String {
        return "We had \(visitsYesterday) visitors yesterday. Today we have \(visitsToday) visitors. Tomorrow we will have about \(visitsTomorrow) visitors."
    }
}

// экземпляр структуры
let secondWebSite = MySecondSite()


// функция которая позволяет изменить имя нашей структуры в экземпляре структуры
func newChangeSiteName(mysecondsite: MySecondSite) -> MySecondSite {
    
    
    var mysecondsite = mysecondsite // чтобы изменить знаечние свойства в структуре, необходимо передаваемый параметр из функции сделать так что он равен переменной
    
    
    mysecondsite.siteName = "apple.com"
    return mysecondsite
}

newChangeSiteName(mysecondsite: secondWebSite)
secondWebSite.siteName




// ----- у классов есть еще один оператор. - тождественности. - ===. У СТРУКТУР ОН ПОКАЖЕТ ОШИБКУ по тождественности потому что структуры итак лежат в разных ячейках памяти ----------------------------
// ----- этот оператор проверяет принадлежат ли экземпляры классов к одной ячейке памяти
// ----- то-есть является ли один экземпляр класса ссылкой другого экземпляра класса


class MyThirdSite {
    // свойства
    var siteName = "instagram.com"
    let visitsToday = 1000
    let visitsYesterday = 1000
    
    // вычисляемое свойство
    var visitsTomorrow: Int {
        return (visitsToday + visitsYesterday) / 2
    }
    
    // ленивое свойство
    lazy var someLazyProperty = 1 + 2
    
    
    // метод класса
    func description() -> String {
        return "We had \(visitsYesterday) visitors yesterday. Today we have \(visitsToday) visitors. Tomorrow we will have about \(visitsTomorrow) visitors."
    }
}

// экземпляр класса
let thirdWebSite = MyThirdSite()


// функция которая позволяет изменить имя нашего класса в экземпляре класса
//func nextChangeSiteName(mythirdsite: MyThirdSite) -> MyThirdSite {
//
//
//   // var mythirdsite = mythirdsite // чтобы изменить знаечние свойства в структуре, необходимо передаваемый параметр из функции сделать так что он равен переменной
//
//
//    mythirdsite.siteName = "apple.com"
//    return mythirdsite
//}

//nextChangeSiteName(mythirdsite: thirdWebSite)
thirdWebSite.siteName

// ----- оператор тождественности в примере на классе

let fourthWebSite = MyThirdSite()

if thirdWebSite === fourthWebSite {
    print("===")
} else {
    print("not!") // показало not потому что данные экземпляры хоть и равны, НО лежат в РАЗНЫХ ЯЧЕЙКАХ ПАМЯТИ. (хоть все значения и все внутри них абсолютно одинаковое)
}

let fifthWebSite = thirdWebSite // мы берем fifthWebSite и помпещаем в него ссылку нашего thirdWebSite

if thirdWebSite === fifthWebSite {
    print("===") // показало ====  потому что данные экземпляры равны, и fifthWebsite ЕСТЬ ССЫЛКА на наш экземпляр класса thirdWebSite НА ТУЖЕ ЯЧЕЙКУ ПАМЯТИ. (и все все значения и все внутри них абсолютно одинаковое тоже)
} else {
    print("not!")
}

// ----- все БАЗОВЫЕ ТИПЫ это и есть СТРУКТУРЫ (string, double, int и все остальные базовые).
// ----- благодаря СТРУКТУРАМ  в свифт появилось такое понятие как протоколо-ориентированное программирование. Мы можем уже не использовать  классы а использовать структуры для того чтобы создать основной блок приложения используя ТОЛЬКО интерфейсы или протоколы.
