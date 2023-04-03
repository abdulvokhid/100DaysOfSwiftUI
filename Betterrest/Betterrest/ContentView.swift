//
//  ContentView.swift
//  Betterrest
//
//  Created by Abdulvokhid Azimov on 03.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
