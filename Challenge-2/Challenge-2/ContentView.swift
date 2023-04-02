//
//  ContentView.swift
//  Challenge-2
//
//  Created by Abdulvokhid Azimov on 28.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var options = ["🪨", "📃", "✂️"]
    @State private var needToWin = Bool.random() // returns true or false about wether the player needs to win
    @State private var rounds = 0 //number of game raunds
    
    let computerNo = Int.random(in: 0...2) //choose a random number between 0 abd 2 that will later be the computer game move
    var toWin: String {
        if options[computerNo] == "🪨" {
            return "📃"
        } else if options[computerNo] == "📃" {
            return "✂️"
        } else {
            return "🪨"
        } //returns the winning answer
    }
    
    @State private var alertPresented = false
    @State private var outcomeTitle = ""
    @State private var wasCorrect = false
    @State private var score = 0
    @State private(set) var highScore = 0
    @State private var hasEnded = false
       
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack{
                Text("Roc Paper Scissors")
                    .padding()
                    .scaledToFit()
                    .font(.largeTitle)
                Text("The computer chose...")
                    .padding()
                Text(options[computerNo])
                    .font(.largeTitle)
                Text("You must...")
                    .padding()
                Text(needToWin ? "Win" : "Lose")
                    .foregroundColor(needToWin ? .green : .red)
                    .padding()
                    .font(.largeTitle)
                Text("Choose wisely...")
                    .padding()
                HStack {
                    Spacer()
                    Button("🪨") {
                        let userOption = "🪨"
                        chosen(user: userOption)
                    }.foregroundColor(.mint)
                        .font(.largeTitle)
                    Spacer()
                    Button("🗒") {
                        let userOption = "🗒"
                        chosen(user: userOption)
                    }.foregroundColor(.black)
                    .font(.largeTitle)
                    Spacer()
                    Button("✂️") {
                        let userOption = "✂️"
                        chosen(user: userOption)
                    } .foregroundColor(.indigo)
                    .font(.largeTitle)
                    Spacer()
                }
                Spacer()
                HStack{
                    Text("Score: \(score)")
                        .padding(20)
                    VStack{
                        Text("High Score: \(highScore)")
                        Button("Reset") {
                            highScore = 0
                        }
                        .foregroundColor(.yellow)
                    }
                }
                
            } .alert(outcomeTitle, isPresented: $alertPresented) {
                Button("Next", action: nextQuestion)
                
            } message: {
                if wasCorrect == true {
                    Text("Your score is \(score)")
                } else {
                    Text("Try again")
                }
                
            } .alert("Game Over", isPresented: $hasEnded) {
                Button("Restart game", action: gameOver)
            } message: {
                if wasCorrect == true {
                    Text("Correct! Your final score was \(score)")
                } else {
                    Text("Wrong! Your final score was \(score)")
                    
                }
            }
        }
    }
    func chosen(user: String) {
        rounds += 1
        if user == toWin && needToWin == true {
            outcomeTitle = "Correct"
            wasCorrect = true
            score += 1
        }
        if user == toWin && needToWin == false {
            outcomeTitle = "Wrong"
            wasCorrect = false
        }
        if user != toWin && needToWin == true {
            outcomeTitle = "Wrong"
            wasCorrect = false
        }
        if user != toWin && needToWin == false {
            outcomeTitle = "Correct"
            wasCorrect = true
            score += 1
        }
        if rounds == 10 {
            hasEnded = true
        } else {
            alertPresented = true
        }
    }
    func nextQuestion() {
            options.shuffle()
            needToWin = Bool.random()
        }
    func gameOver() {
        nextQuestion()
        rounds = 0
        if score > highScore {
            highScore = score
        }
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
