//
//  ContentView.swift
//  WeSplit
//
//  Created by Abdulvokhid Azimov on 05.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Enter something", text: $name)
                Text("Your name is \(name)")
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
