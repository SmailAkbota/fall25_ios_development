import Swift

var firstName = "Akbota"
var lastName = "Smail"
let birthYear = 2004
let currentYear = 2025
var age = currentYear - birthYear
var isStudent = true
var course = 4
var height = 1.63
var weight = 49.0
var isMarried = false

var hobbies = ["drawing", "lego", "puzzles", "films"]
var favNumber = 7
var favSport = "Basketball"
var favFilm = "The Dark Knight"
var favBook = "Harry Potter"
var favCharacter = "Jason Todd"

let 💖 = "💖"
let 🙂 = "🙂"

let me = """
Hi, I’m \(firstName) \(lastName)\(💖). I’m \(age), study at KBTU in year \(course). \
Height \(height)m, weight \(weight)kg. Married? \(isMarried). \
I’ve got \(hobbies.count) hobbies: \(hobbies.joined(separator: ", ")). \
Fav number: \(favNumber). Fav sport: \(favSport). \
Film: "\(favFilm)", book: "\(favBook)", character: \(favCharacter). \
Still student? \(isStudent)\(🙂)
"""
print(me)

let goals = "travel a lot, earn money, build cool projects, maybe move abroad"
let 😇 = "😇"

let future = """
In future I want to \(goals). Or plan B: husband does it with me \(😇).
"""
print(future)

