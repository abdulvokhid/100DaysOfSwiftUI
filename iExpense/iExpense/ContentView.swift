//
//  ContentView.swift
//  iExpense
//
//  Created by Abdulvokhid Azimov on 14.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    struct User: Codable {
        let firstName: String
        let lastName: String
    }
    @State private var user = User(firstName: "Usman", lastName: "Hafiz")
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Save User"){
                    let encoder = JSONEncoder()
                    
                    if let data = try? encoder.encode(user){
                        UserDefaults.standard.set(data, forKey: "UserData")
                    }
                }
            }
            .navigationTitle("Codable")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
