//
//  ContentView.swift
//  WeSplit
//
//  Created by Abdulvokhid Azimov on 05.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Form{
                Text("Hello Abdulvokhid")
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
