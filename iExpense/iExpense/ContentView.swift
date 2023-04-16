//
//  ContentView.swift
//  iExpense
//
//  Created by Abdulvokhid Azimov on 14.04.2023.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    
    var body: some View {
        Button("Dismiss"){
            dismiss()
        }
    }
}

struct ContentView: View {
    
    @State private var showingBB = false
    var body: some View {
        VStack {
            Button("Show BB"){
                showingBB.toggle()
            }
            .sheet(isPresented: $showingBB) {
                SecondView(name: "WhiTe")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
