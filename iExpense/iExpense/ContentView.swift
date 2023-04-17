//
//  ContentView.swift
//  iExpense
//
//  Created by Abdulvokhid Azimov on 14.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Tap count: \(tapCount)"){
                    tapCount += 1
                }
            }
            .navigationTitle("UserDefault")
            .toolbar{
                EditButton()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
