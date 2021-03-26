import UIKit

//Lesson ----- Наблюдатели свойства -----/

// это такие штуковины которые наблюдают за значениями свойств, или наблюдают за изменениями значений свойств

class SecretLabEmployee {
    
    var accessLevel = 0 {
        willSet (newValue){ //будет установлено то или иное действие
                  // этот блок кода срабатывает прямо тогда когда новое значение с didSet вступит в силу
            print("new boss is about to come")
            
            //в этом блоке мы можем получить новое значение в виде дефолтной переменной newValue которое мы можем назвать как угодно и оно тоже будет работать в этой переменной
            print("new access level is \(newValue)")
        }
        didSet { // было установлено то или иное действие
            if accessLevel > 0 {
                accessToDB = true
            } else {
                accessToDB = false
            }
            
            //в этом блоке мы можем получить старое значение в виде дефолтной переменной oldValue которое мы можем назвать как угодно и оно тоже будет работать в этой переменной
            
            print("new boss just come")
            print("last time I had access level \(oldValue)")
        }
        
    }
    
    
    var accessToDB = false
    
}


let employee = SecretLabEmployee()
employee.accessLevel
employee.accessToDB

employee.accessLevel = 1
employee.accessToDB
