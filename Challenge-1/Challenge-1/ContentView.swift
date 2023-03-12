//
//  ContentView.swift
//  Challenge-1
//
//  Created by Abdulvokhid Azimov on 12.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form{
                Section {
                    Text("Hello")
                }
            }.navigationTitle("VolumeConversion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
