//
//  ContentView.swift
//  Converter
//
//  Created by Abdulvokhid Azimov on 21.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userEnteredSecund = 0.0
    @State private var choose = "Minute"
    @State private var secund = 0.0
    
    let timeOption = ["Minute","Hour","Date"]
    
    @FocusState private var amountIsFocused: Bool
    
    var convertToHour: Double {
        let result = (userEnteredSecund / (secund + 3600))
                      
        return result
        
    }
    
    
    var body: some View {
        NavigationView{
            Form {
                Section{
                    TextField("Second", value: $userEnteredSecund, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    Picker("Choose time from the list", selection: $choose) {
                        ForEach(timeOption, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.automatic)
                } header: {
                    Text("Enter second to convert hours")
                }
                
                Section {
                    Text(convertToHour, format: .number)
                } header: {
                    Text("Result")
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
