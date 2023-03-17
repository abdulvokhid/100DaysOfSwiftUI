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
    @State private var inputUnite = "Seconds"
    @State private var outputUnite = "Hour"
    //Hiding the key
    @FocusState private var inputIsFocused: Bool
    
    //options to choose for picker style
    let times = ["seconds", "minutes", "days"]
    
    var final : String {
        let seconds = 86400 * 4 + 3600 + 65
        let days = seconds / 86400
        let hours = ((seconds % 86400) / 3600)
        let minutes = ((seconds % 3600) / 60)
        let secondss = ((seconds % 3600) % 60)
        return final
    }
    
    
    var body: some View {
        NavigationStack {
            Form{
                //deals with hours
                Section {
                    TextField("Amounts", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
                } header: {
                    Text("Convert hour to other times")
                }
                Section {
                    Picker("Convert From", selection: $inputUnite){
                        ForEach(times, id: \.self){
                            Text($0)
                        }.pickerStyle(.navigationLink)
                    }
                    Picker("Convert To", selection: $outputUnite){
                        ForEach(times, id: \.self){
                            Text($0)
                        }
                    }
                }
                Section {
                    Text(final)
                } header: {
                    Text("Result")
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
