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
/*
---Day-4 How to use type annotations

let surname: String = "Lasso"
var score: Double = 0
let playName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.131
var isAuthenticated: Bool = true

//complex types
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set ([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
//empty an arrays (3 all the same choose what you like)
var teams: [String] = [String]()
var citites: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, sysytem
}

var style = UIStyle.light
style = .dark
style = .sysytem


let userName: String //this type of code requires type annotations
// lots of complex logic
userName = "@WhiTe"
//lots more complex logic
print(userName)
 */
/*
---Checkpoint 2---

• Create an array of strings then write some code that prints the number of items
• Also number of unique items in the array
 
---Solution---
• created an array programmingLanguages identifed with Set and declared as String
• Set helps to print unique items from our an array
• .count prints how many number of items do we have in our an array
 
var programmingLanguges: Set<String> = ["python","c++","c#", "javaScript", "go", "java", "swift", "kotlin", "swift"]
print(programmingLanguges.count)
print(programmingLanguges)
-----------------------------------------------------------------------------------------------------
 */
/*
---Day-5 How to check a condition is true or false
 
let score = 85

if score > 80 {
    print("Great Job")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 { //greater or equal to 88 output must be TRUE
    print("Where we're going, we dont need roads")
}

if percentage < 85 { //it must return FALSE
    print("Sorry, you failed the test")
}

if age >= 18 { // it must return TRUE
    print("You are eligible to vote")
}

let ourName = "Abdulvokhid Azimov"
let friendName = "Jakhongir Rasulov"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
    print("Total letters of ourName is \(ourName.count) and total letters of friendName is \(friendName.count)")
}
if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
    print("Total letters of friendName is \(friendName.count) and total letters of ourName is \(ourName.count)")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "Canada"

if country == "Australia" {
    print("G' day")
}
let name = "Abdulvokhid Azimov"
if name != "Anonymous" {
    print("Welcome \(name)")
}

var userName = "abdulvokhid123"
if userName.isEmpty {
    userName = "Anonymous"
}
print("Welcome, \(userName)")
 */
/*
 ---Day-5 How to check multiple conditions
 
let age = 16

if age >= 18 {
    print("You can vote in the next election")
} else {
    print("Sorry, you are too young to vote")
}
//logical operator
let temp = 25
if temp > 20 && temp < 30 { //(&& AND)
    print("It's a nice day")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent { //(|| OR) right was true thats why we have output
    print("You can buy the game!")
}

enum transportOption {
    case airplane, helicopter, bicycle, car, escooter
}
let transport = transportOption.airplane
if transport == .airplane || transport == .helicopter{
    print("We will fly")
} else if transport == .escooter {
    print("I hope there is a bike path")
} else if transport == .car {
    print("Lets visit museum in Mountains")
} else {
    print("Lets stay at home")
}
 */
/*
---Day-5 How to use switch statements to check multiple conditions---


enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun
switch forecast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You are batman")
case "Mega_City One":
    print("You are Judge Dredder")
case "Wakanda":
    print("You are Black Panther")
default:
    print("Who are you ?") // checked one by one could not find provided city thats why we got default output!!!
}

// Fallthrough allows us to print each case of our switch method if we want!!!
let day = 5
print("My true love gave to me...")
switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hense")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
 */
/*
---Day-5 How to use the ternary conditional operator for quick tests---


let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

let hour = 23
print(hour < 12 ? "Its before none" : "Its after noon")

let name = ["Abdulvokhid","Ali","Azim"]
let crewCount = name.isEmpty ? "No one" : "\(name.count) people"
print(crewCount)

enum Theme {
    case light, dark
}
let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)
 ------------------------------------------------------------------------------------------------
 */

/*
---Day-6 How to use a for loop to repeat work


let platforms = ["iOS","macOS","tvOS","watchOS"]
for os in platforms {
    print("Swift works great on \(os)")
}


for i in 1...12 {
    print("This \(i) times table")
    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }
    print()
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}
for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}

var lyrics = "Haters gonna"

for _ in 1...5 {
    lyrics += "hate "
}
print(lyrics)
*/
/*
---Day-6 How to use a while loop to repeat work

var countDown = 10

while countDown > 0 {
    print("\(countDown)...")
    countDown -= 1
}
print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critical hit!")
*/
/*
---Day-6 How to skip loop items with break and continue


var fileNames = ["me.jpg", "work.txt", "sophie.jpg"]
for filename in fileNames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)
 */
/*
---Checkpoint-3 ---
// Both ways works !!!
// basic way
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0{
        print("Buzz")
    } else {
        print(i)
    }
}
// more swift way
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
 -----------------------------------------------------------------------------------------------
*/

/*
---Day-7 How to reuse code with functions---

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want")
}
showWelcome()

let number = 139
if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("ODd")
}

let roll = Int.random(in: 1...20)

func printTimesTable(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTable(number: 5, end: 20)
*/
/*
---Day-7 How to return values from functions


func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let result = rollDice()
print(result)


func stringDo(string1: String, string2: String) -> Bool {
    if string1.sorted() == string2.sorted() {
        return true
    } else {
        return false
    }
    //other way of solving an issue but result taken from course
    // return string1.sorted() == string2.sorted()
}
stringDo(string1: "ABCD", string2: "DCBA")

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
let c = pythagoras(a: 3, b: 4)
print(c)
 */
/*
---Day-7 How to return multiple values from functions---

//this is really bad solution for this case
func getUser() -> [String: String] {
    ["firstName":"Abdulvokhid", "lastName":"Azimov"]
}
let user = getUser()
print("Name: \(user["firstName", default: "?"]) \(user["lastName", default: "?"])")

//swift has better solution for tuples and dictionaries
func gg() -> (name: String, name2: String) {
    ("Abdulvokhid","Azimov")
}
let azim = gg()
print("Name: \(azim.name) \(azim.name2)")
*/
/*
---Day-7 How to customize parameter labels---
*/

func rollDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    return rolls
}
let rolls = rollDice(sides: 6, count: 4)


//This method of naming parameters for external use is so important to Swift that it actually uses the names when it comes to figuring out which method to call. This is quite unlike many other languages, but this is perfect valid in Swift:
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let result = isUppercase(string)

func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 2)
