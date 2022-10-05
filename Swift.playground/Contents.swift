import Cocoa

/*
 ----Day-1 How to create variables and constants-----
Variable -> var -> Variables are a great way to store temporary data in your programs
Constants -> let -> We can’t change their values once they are set.
var hello = "Welcome back again"

//changeble variable
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
 */
/*
 ---Day-2 How to store truth with Booleans---
 */
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

