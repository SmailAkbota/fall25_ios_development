func isPrime(number: Int) -> Bool {
    if number < 2 {
        return false
    }
    
    var count = 0
    for i in 1...number {
        if number % i == 0 {
            count += 1
        }
    }
    
    return count == 2  
}


for n in 1...100 {
    if isPrime(number: n) {
        print(n)
    }
}
//8
func checkPalindrome(_ text: String) -> Bool {
    let cleanText = text.lowercased().filter { $0.isLetter }
    return cleanText == String(cleanText.reversed())
}

let test1 = "А роза упала на лапу Азора"
let test2 = "Привет"

print("'\(test1)' - палиндром: \(checkPalindrome(test1))")
print("'\(test2)' - палиндром: \(checkPalindrome(test2))")
//9
func add(_ a: Double, _ b: Double) -> Double { return a + b }
func subt(_ a: Double, _ b: Double) -> Double { a - b }
func multip(_ a: Double, _ b: Double) -> Double { a * b }
func divide(_ a: Double, _ b: Double) -> Double? {
    return b != 0 ? a / b : nil
}

// Тестируем разные операции
let num1: Double = 15
let num2: Double = 3

print("Числа: \(num1) и \(num2)")
print("Сложение: \(add(num1, num2))")
print("Вычитание: \(subt(num1, num2))")
print("Умножение: \(multip(num1, num2))")

if let result = divide(num1, num2) {
    print("Деление: \(result)")
} else {
    print("Деление: ошибка")
}
//10
func checkUniqueChars(_ text: String) -> Bool {
    var seenChars = Set<Character>()
    
    for char in text {
        if seenChars.contains(char) {
            return false
        }
        seenChars.insert(char)
    }
    return true
}

let word1 = "Swift"
let word2 = "Hello"

print("'\(word1)' - все символы уникальные: \(checkUniqueChars(word1))")
print("'\(word2)' - все символы уникальные: \(checkUniqueChars(word2))")


//

func ismyPrime(_ x:Int) -> Bool{
    if x<2{
        return false
    }
   var cnt=0
    for i in 1...x{
        if x%i==0{
            cnt+=1
        }
    }
    return cnt == 2
}
for n in 1...100{
    if ismyPrime(n){
        print(n)
    }
}
//palindrome]

