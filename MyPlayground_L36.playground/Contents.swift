import UIKit

// ------- Lesson ---- Сабскрипты -------//
// сабскрипт другими словами это как индекс
// сабскрипты используються с массивами, структурами, классами, перечислениями

let array = [1, 2, 3, 4]
array[1]

struct WorkPlace {
    var table: String
    var workPlace: [String]
    
    subscript(index: Int) -> String? {
        get{
            switch index {
            case 0: return table
            case 1..<workPlace.count + 1: return workPlace[index - 1]
            default: return nil
            }
        }
        
        set{
            switch index {
            case 0: return table = newValue ?? ""
            case 1..<workPlace.count + 1: return workPlace[index - 1] = newValue ?? ""
            default: break
            }
        }
    }
}

var work = WorkPlace(table: "table", workPlace: ["chair", "armchair", "lamp"])

// получили значение через обращение
work.workPlace[1]

// получаем значение применяя сабскрипт в таком виде
work[1]
