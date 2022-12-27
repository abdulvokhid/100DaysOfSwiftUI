//
//  ContentView.swift
//  Converter
//
//  Created by Abdulvokhid Azimov on 21.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var amount = ""
    @State private var choose = 0
    @State private var secund = 0
    
    let timeOption = ["Minute","Hour","Date"]
    
    let minute = 60
    let hour = 3600
    let date = 86400
    
    @FocusState private var amountIsFocused: Bool
    
    var convert: Double {
        
        guard let amountDouble = Double(amount) else { return 0 }
        var result: Double = 0
        
        if choose == 0 {
            result = amountDouble / Double(secund + minute)
        } else if choose == 1 {
            result = amountDouble / Double(secund + hour)
        } else if choose == 2 {
            result = amountDouble / Double(secund + date)
        }
        
        //let minute = (userEnteredSecund / (secund + 60)) // minute cal
        //let hour = (userEnteredSecund / (secund + 3600)) // secund cal
     return result
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section{
                    TextField("Second", text: $amount)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    Picker("Choose time from the list", selection: $choose) {
                        ForEach(0 ..< timeOption.count) {
                            Text(self.timeOption[$0])
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Convert second to Minute or Hour")
                }
                
                Section {
                    Text(convert, format: .number)
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
