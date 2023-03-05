//
//  ContentView.swift
//  WeSplit
//
//  Created by Abdulvokhid Azimov on 05.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    
    var body: some View {
        NavigationStack{
            Button("Tap Count: \(tapCount)"){
                self.tapCount += 1
            }
            .navigationTitle("WeSplit")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
