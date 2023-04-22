//
//  ContentView.swift
//  Moonshot
//
//  Created by Abdulvokhid Azimov on 22.04.2023.
//

import SwiftUI

struct ContentText: View {
    let text: String
    var body: some View {
        Text(text)
    }
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView() {
                VStack(spacing: 10) {
                    ForEach(0..<100) {
                        Text("Item \($0)")
                            .font(.title)
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
