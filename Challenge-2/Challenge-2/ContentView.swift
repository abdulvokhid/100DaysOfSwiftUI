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
    
       
    var body: some View {
        ZStack {
            Color.gray
            VStack{
                Text("Roc Paper Scissors")
                    .padding()
                    .scaledToFit()
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
