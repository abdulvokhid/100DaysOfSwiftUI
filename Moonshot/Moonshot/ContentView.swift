//
//  ContentView.swift
//  Moonshot
//
//  Created by Abdulvokhid Azimov on 22.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GeometryReader {
                geo in
                Image("rubiks")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width * 1.1)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
