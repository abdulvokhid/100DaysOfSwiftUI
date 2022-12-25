//
//  ContentView.swift
//  Converter
//
//  Created by Abdulvokhid Azimov on 21.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userEnteredSecund = 0.0
    @State private var secund = 0.0
    
    @FocusState private var amountIsFocused: Bool
    
    var convertToHour: Double {
        var result = (userEnteredSecund / (secund + 3600))
        print(result)
                      
        return result
        
    }
    
    
    var body: some View {
        NavigationView{
            Form {
                Section{
                    TextField("Second", value: $userEnteredSecund, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
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
