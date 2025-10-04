import UIKit
import PlaygroundSupport

class ConverterViewController: UIViewController {
    
    let textField = UITextField()
    let unitControl = UISegmentedControl(items: ["C", "F", "K"])
    let resultLabel = UILabel()
    let button = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Поле для ввода
        textField.frame = CGRect(x: 20, y: 40, width: 260, height: 40)
        textField.placeholder = "Введите температуру"
        textField.borderStyle = .roundedRect
        view.addSubview(textField)
        
        // Выбор единиц
        unitControl.frame = CGRect(x: 20, y: 100, width: 260, height: 30)
        unitControl.selectedSegmentIndex = 0
        view.addSubview(unitControl)
        
        // Label
        resultLabel.frame = CGRect(x: 20, y: 140, width: 260, height: 60)
        resultLabel.numberOfLines = 0
        resultLabel.textColor = .black
        view.addSubview(resultLabel)
        
        // Кнопка
        button.frame = CGRect(x: 20, y: 220, width: 260, height: 40)
        button.setTitle("Конвертировать", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
    }
    
    // Функции конверсии
    func celsiusToFahrenheit(_ c: Double) -> Double { (c * 9/5) + 32 }
    func celsiusToKelvin(_ c: Double) -> Double { c + 273.15 }
    func fahrenheitToCelsius(_ f: Double) -> Double { (f - 32) * 5/9 }
    func fahrenheitToKelvin(_ f: Double) -> Double { (f - 32) * 5/9 + 273.15 }
    func kelvinToCelsius(_ k: Double) -> Double { k - 273.15 }
    func kelvinToFahrenheit(_ k: Double) -> Double { (k - 273.15) * 9/5 + 32 }
    
    @objc func buttonTapped() {
        guard let text = textField.text, let value = Double(text) else {
            resultLabel.text = "Введите число!"
            return
        }
        
        let unit = unitControl.titleForSegment(at: unitControl.selectedSegmentIndex) ?? "C"
        
        switch unit {
        case "C":
            resultLabel.text = "\(value)°C = \(celsiusToFahrenheit(value))°F\n\(value)°C = \(celsiusToKelvin(value))K"
        case "F":
            resultLabel.text = "\(value)°F = \(fahrenheitToCelsius(value))°C\n\(value)°F = \(fahrenheitToKelvin(value))K"
        case "K":
            resultLabel.text = "\(value)K = \(kelvinToCelsius(value))°C\n\(value)K = \(kelvinToFahrenheit(value))°F"
        default:
            resultLabel.text = "Неизвестная единица"
        }
    }
}

// Запускаем LiveView
PlaygroundPage.current.liveView = ConverterViewController()
