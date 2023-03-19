//
//  ContentView.swift
//  Challenge-1
//
//  Created by Abdulvokhid Azimov on 12.03.2023.
//

import SwiftUI

//Time conversions: User choose seconds, minutes, hours or days
struct ContentView: View {
    
    @State private var input = 0.0
    //Hiding the key
    @FocusState private var inputIsFocused: Bool
    
    var day = 86400
    var hour = 3600
    var minute = 60
    
    var body: some View {
        NavigationStack {
            Form{
                //deals with hours
                Section {
                    TextField("Amounts", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
                } header: {
                    Text("Convert seconds to other times")
                }
                Group{
                    
                }
                Section {
                    Text("")
                } header: {
                    Text("From seconds to minutes")
                }
                Section{
                    Text("")
                }header: {
                    Text("From seconds to hour")
                }
                Section {
                    Text("")
                }header: {
                    Text("From seconds to days")
                }
                
            }
            .navigationTitle("TimeConversion")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done"){
                        inputIsFocused = false
                    }
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
