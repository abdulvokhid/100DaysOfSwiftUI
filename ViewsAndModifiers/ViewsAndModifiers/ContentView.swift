//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Abdulvokhid Azimov on 26.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.mint)
            Text("Hello, world!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
