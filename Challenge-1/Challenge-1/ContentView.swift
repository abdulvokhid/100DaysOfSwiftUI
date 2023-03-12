//
//  ContentView.swift
//  Challenge-1
//
//  Created by Abdulvokhid Azimov on 12.03.2023.
//

import SwiftUI

//Time conversions: User choose seconds, minutes, hours or days
struct ContentView: View {
    
    @State private var hour = 0.0
    @State private var seconds = 0.0
    @State private var minutes = 0.0
    @State private var days = 0.0
    @State private var timer = "seconds"
    //Hiding the key
    @FocusState private var inputIsFocused: Bool
    
    //options to choose for picker style
    let times = ["seconds", "minutes", "days"]
    
    var body: some View {
        NavigationStack {
            Form{
                //deals with hours
                Section {
                    TextField("Amounts", value: $hour, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
                    Picker("Choose volue for output", selection: $timer) {
                        ForEach(times, id: \.self) {
                            Text($0, format: .number)
                        }
                    }.pickerStyle(.navigationLink)
                }
                //output for seconds
                Section{
                    Text("Seconds")
                } header: {
                    Text("Hours converted to Seconds")
                }
                //output for minutes
                Section{
                    Text("Minutes")
                } header: {
                    Text("Hours converted to Minutes")
                }
                //output for days
                Section{
                    Text("Days")
                } header: {
                    Text("Hours converted to Days")
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
