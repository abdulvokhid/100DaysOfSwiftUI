//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Abdulvokhid Azimov on 29.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            print("Button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
        }
        
    }
    
    func executeDelete() {
        print("Now deleting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
