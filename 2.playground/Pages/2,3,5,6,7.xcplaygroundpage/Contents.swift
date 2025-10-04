for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
//5
let testSentence = "Привет мир привет солнце мир"
print("Предложение: \(testSentence)")

let words = testSentence
    .lowercased()
    .split { !$0.isLetter && !$0.isNumber }
    .map { String($0) }
    .filter {
        !$0.isEmpty }

var wordCount: [String: Int] = [:]

for word in words {
    wordCount[word, default: 0] += 1
}

print("cnt word:")
for (word, count) in wordCount {
    print("\(word): \(count)")
}
//6
//0, 1, 1, 2, 3, 5, 8.
func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 { return [] }
    if n == 1 { return [0] }
    
    var numbers = [0, 1]
    for i in 2..<n {
        let next = numbers[i-1] + numbers[i-2]
        numbers.append(next)
    }
    return numbers
}

let fibNumbers = fibonacci(10)
print(": \(fibNumbers)")



//7swift
let students = [
    "Алия": 85,
    "Бахыт": 92,
    "Серик": 78,
    "Айгуль": 88,
    "Даурен": 75
]

let scores = students.values


var sum = 0
for score in scores {
    sum += score
}


let average = sum / scores.count


let maxScore = scores.max()!
let minScore = scores.min()!

print("Средний балл: \(average)")
print("Лучший результат: \(maxScore)")
print("Худший результат: \(minScore)")

for (name, score) in students {
    if score > average {
        print("\(name): \(score) - выше среднего")
    } else {
        print("\(name): \(score) - ниже среднего")
    }
}


// prime
