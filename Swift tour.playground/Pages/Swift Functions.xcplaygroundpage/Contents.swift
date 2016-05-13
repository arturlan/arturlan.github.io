//swift function



func calculateArea(lenght: Int, width: Int) -> Int {
    
    let area = lenght * width
    
    return area
}

//room #1
calculateArea(10, width: 12)

//room #2

calculateArea(30, width: 25)


func temperatureInFahrenheit(temperature: Double) -> Double {
    return temperature * 9 / 5 + 32
}

temperatureInFahrenheit(1)

func getRemainder(value a: Int, divisor b: Int) -> Int {
    return a % b
}

let result = getRemainder(value: 10, divisor: 3)

func carpetPrice(lenght: Int, width: Int, color: String = "Red") -> (Int, String) {
    var price: Int
    
    let area = calculateArea(lenght, width: width)
    switch color {
        case "Red": price = area * 12
        case "Tan": price = area * 10
    default: price = 0
    }
    return (price, color)
}

let res = carpetPrice(30, width: 40, color: "Tan")

res.1

//function scope

func countDownAndUp(var a: Int) {
    var b = a
    
    while b >= 0 {
        b--
        a++
        print("a: \(a)")
        print("b: \(b)")

    }
}

countDownAndUp(10)

func getTowerCoordinate(location: String) -> (Double, Double) {

    switch location {
    case "Eiffel Tower": return(48.8582, 2.2945)
        case "Great Pyramid": return(29.9792, 31.1344)
        case "Sydney Opera House": return(33.8587, 151.2140)
    default: return(0, 0)
        
    }
}

getTowerCoordinate("Eiffel Tower")


