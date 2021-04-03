import UIKit

// ------- Lesson ---- Опциональные цепочки -------//

// опциональная цепочка это цепочка из опционалов

// если мы хотим что-то получить, - то нужно чтобы несколько факторов не было nil


class Person {
    let job: Job? = Job()
    let workers: [Worker]? = [Worker()]
}

class Worker {
    let name = "Petya"
    
    func work(){
        print("I do some job")
    }
}

class Job {
    let salary: Salary? = Salary()
}

class Salary {
    let salary = 100000
    
    func showSalary() -> String {
        return "\(salary)"
    }
}

let person = Person()

// такую запись можно сократить
if let job = person.job {

    if let salary = job.salary {
        salary.salary
    }

}


// сокращенный вариант записи выше

if let job = person.job, let salary = job.salary {
    salary.salary
}


// третий вариант в виде опциональной цепочки

let salaryViewInInteger = person.job?.salary?.salary
let salaryAnotherViewInString = person.job?.salary?.showSalary()



// создаем массив и помещаем туда работников

var workersArray = person.workers
workersArray?.append(Worker())
workersArray

