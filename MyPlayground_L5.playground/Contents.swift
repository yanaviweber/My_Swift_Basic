import UIKit

//Lesson ----- Интерполяция строк -----/

var str = "Hello, playground"

let temperature = 14
let windSpeed = 6

let weatherDescription = "Temperature is about 12ºC above zero and wind speed is about 5 m/s"

let weatherDescriptionI = "Temperature is about \(temperature)ºC above zero and wind speed is about \(windSpeed) m/s"


//вычисления внутри струки в виде строки а не числа
let string = "\(1 + 2)" + "\(2 + 3)"
