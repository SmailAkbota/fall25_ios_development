func celsiusToFahrenheit(_ c: Double) -> Double {
    return (c * 9/5) + 32
}

func celsiusToKelvin(_ c: Double) -> Double {
    return c + 273.15
}

func fahrenheitToCelsius(_ f: Double) -> Double {
    return (f - 32) * 5/9
}

func fahrenheitToKelvin(_ f: Double) -> Double {
    return celsiusToKelvin(fahrenheitToCelsius(f))
}

func kelvinToCelsius(_ k: Double) -> Double {
    return k - 273.15
}

func kelvinToFahrenheit(_ k: Double) -> Double {
    return celsiusToFahrenheit(kelvinToCelsius(k))
}

let temperature = 25.0
let unit = "C"

print("Converting \(temperature)°\(unit)")
print("Results:")

switch unit {
case "C":
    let f = celsiusToFahrenheit(temperature)
    let k = celsiusToKelvin(temperature)
    print("\(temperature)°C = \(f)°F")
    print("\(temperature)°C = \(k)K")
    
case "F":
    let c = fahrenheitToCelsius(temperature)
    let k = fahrenheitToKelvin(temperature)
    print("\(temperature)°F = \(c)°C")
    print("\(temperature)°F = \(k)K")
    
case "K":
    let c = kelvinToCelsius(temperature)
    let f = kelvinToFahrenheit(temperature)
    print("\(temperature)K = \(c)°C")
    print("\(temperature)K = \(f)°F")
    
default:
    print("Error: wrong unit")
}
