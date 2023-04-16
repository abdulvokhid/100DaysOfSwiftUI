//
//  ContentView.swift
//  iExpense
//
//  Created by Abdulvokhid Azimov on 14.04.2023.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastname = "Baggins"
}

struct ContentView: View {
    
    @StateObject var user = User()
    
    var body: some View {
        VStack {
            Text("Hello, \(user.firstName) \(user.lastname)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastname)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
