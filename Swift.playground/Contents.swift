import Cocoa

/*
 ----Day-1 How to create variables and constants-----
Variable -> var -> Variables are a great way to store temporary data in your programs
Constants -> let -> We can’t change their values once they are set.
var hello = "Welcome back again"

//changeable variable
var name = "Ali"
name = "Azimo"
name = "Usmon"


var playerName = "Salimov"
print(playerName)

playerName = "Davlat"
print(playerName)

playerName = "Furqat"
print(playerName)

//not changebale
let charcater = "Jacky"
//character = "Elon"
//charcater = "Mark"
let managerName = "Jo"
let teamLead = "Pascal"
let seniorDeveloper = "Michal"
let meaningOfLife = "How many roads mast a man walk down?"
*/
/*
---Day-1 How to create strings---

let actor = "Denzel Washington"
let fileName = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let quote = "Then he tapped a sogn saying \"Believe\" and walked away"
//multi-line String if you have lots of text you want to store. That’s where multi-line strings come in:
let movie = """
A day in the life
Apple engineer
"""
var henley = """I am the master of my fate
 I am the captain of my soul""" // not allowed

print(actor.count)
let nameResult = result.count
print(nameResult)
print(result.uppercased())

//hasPrefix and lets us know whether a string starts with some letters of our choosing:
print(movie.hasPrefix("A day"))
*/
/*
---Day-1 How to store whole numbers ---

let score = 10
let reallyBig = 100_000_000 //ignores under score its for human to ready easly

let lowerScore = score - 2
let highScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halveScore = score / 2

var counter = 10
counter += 5
print(counter)

counter -= 10
counter *= 2
counter /= 2

//isMultiple(of:) on an integer to find out whether it’s a multiple of another integer.
let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))
 */
/*
---Day-1 How to store decimal numbers ---
Integers hold whole numbers, such as 0, 1, -100, and 65 million
doubles hold decimal numbers, such as 0.1, -1.001, and 3.141592654.
 
let numbers = 0.1 + 0.2
print(numbers)

let a = 1
let b = 2.0
let c = Double(a) + b // not allows us to use two different data Double(2.0) and Int(1) it must be specified. why can’t we write var total = myInt + myDouble? The answer is that Swift is playing it safe: we can both see that 1 plus 1.0 will be 2, but your double is a variable so it could be modified to be 1.1 or 3.5 or something else

print(c)

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var name = "Abdulvokhid Azimov"
//name = 25 // not allowed we already declared its as str
var rating = 5.0
rating *= 2
------------------------------------------------------------------------------------------------
 */

/*
 ---Day-2 How to store truth with Booleans---

let fileName = "paris.jpg"
print(fileName.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
var gameOver = false
print(gameOver)
gameOver.toggle() //That will print false first, then after calling toggle() will print true. Yes, that’s the same as using ! just in slightly less code
print(gameOver)


let isMultiple = 120.isMultiple(of: 3)
print(isMultiple)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

---Day-2 How to join strings together---
 

let firstPart = "Hello "
let secondPart = "World"
let greeting = firstPart + secondPart

let people = "Haters "
let action = "hate"
let lyrics = people + "gonna " + action

let luggageCode = "1" + "2" + "3" + "4" + "5"
let quote = "Then he tapped a sign saying \"Believe\" and walked away"

let name = "Abdulvokhid"
let age = 26
let message = "Hello My name is \(name) and I am \(age) years old"
print(message)

let numbers = 11
let missionMessage = "Apollo \(numbers) landed on the moon"

print("5 x 5 is \(5*5)")
 */
/*
Checkpoint - 1
•Create a constant holding any temperature in Celsuis
•Converts that temperature to Fahrenheit by multiplying by 9, dividing by 5, then adding 32
•Print the result, showing both the Celsius and Fahrenheit values

//Challenge Result
let celsius = 25.0
let fahrenheit = Decimal(celsius) * 9 / 5 + 32
print("The temperature in Celsius is \(celsius)℃ and temperature in Fahrenheit is \(fahrenheit)℉")
--------------------------------------------------------------------------------------------------
 */
/*
Day-3 How to store ordered data in arrays


var  beattles = ["John", "Paul", "George", "Ringo"] //str
beattles.append("Adrian") //adds new value to the array
print(beattles)

var numbers = [4, 8, 15, 16, 23, 42] //int
print(numbers[3])
var temperature = [25.3, 28.2, 26.4] //double

//an other way of creating an array
var score = Array<Int>()
score.append(100)
score.append(80)
score.append(85)
print(score[1])

//an other way off creating an array
var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)

//ways of removing items fro the array
var characters = ["Lana","Pam","Ray","Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

//checks wether array contains with any name that has been mentioned in contains
let bondMovies = ["Casino Royale", "Spector", "No Time To Die"]
print(bondMovies.contains("Frozen")) // output will be false as it does not contain Frozen

//sort an array alphabatically
let cities = ["London","Tokyo","Rome","Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
 */
/*
---Day-3 How to store and find data in dictionaries

var employee = ["Abdulvokhid Azimov", "Developer", "Tashkent"]
print("Name \(employee[0])")
employee.remove(at: 1)
print("Job title: \(employee[1])")
//print("Location: \(employee[2])") error becuase out of range

var employee2 = ["name": "Abdulvokhid Azimov", "job": "Developer", "location": "Tashkent"]
print(employee2["name", default: "Unkown"])
print(employee2["job", default: "Unkown"])
print(employee2["location", default: "Unkown"])

let hasGraduated = [
    "Ali": false,
    "Azim": true,
    "John": false
]
let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unkown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shquille O'Neil"] = 216
heights["Lebron James"] = 206

var archEneies = [String: String]()
archEneies["Batman"] = "The Joker"
archEneies["Superman"] = "Lex Luthor",
archEneies["Batman"] = "Penguin"
 */
/*
---Day-3 How to use sets for fast data lookup---


let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])

var actors2 = Set<String>()
actors2.insert("Denzel Washington")
actors2.insert("Tom Cruise")
actors2.insert("Nicolas Cage")
actors2.insert("Samuel L Jackson")
print(actors2)
 */
/*
---Day-3 How to create and use enums---

//An enum – short for enumeration – is a set of named values we can create and use in our code
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
var day = Weekday.monday
day = .tuesday
day = .friday
-------------------------------------------------------------------------------------------------
 */
