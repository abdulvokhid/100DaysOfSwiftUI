//
//  ContentView.swift
//  Converter
//
//  Created by Abdulvokhid Azimov on 21.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userEnteredSecund = 0
    @State private var secund = 0
    @State private var hours = 60
    
    var convertToHour: Int {
        let hour = Int(userEnteredSecund + secund)
        
        return hour
    }
    
    
    var body: some View {
        NavigationView{
            Form {
                Section{
                    TextField("Second", value: $userEnteredSecund, format: .number)
                } header: {
                    Text("Second")
                }
                Section {
                    Text(convertToHour, format: .number)
                } header: {
                    Text("Hour")
                }
                
            }
            .navigationTitle("TimeConverter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
