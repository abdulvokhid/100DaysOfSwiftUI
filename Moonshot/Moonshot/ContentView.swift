//
//  ContentView.swift
//  Moonshot
//
//  Created by Abdulvokhid Azimov on 22.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout){
                ForEach(0..<1000) {
                    Text("GG \($0)")
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
