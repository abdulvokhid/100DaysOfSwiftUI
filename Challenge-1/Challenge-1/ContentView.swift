//
//  ContentView.swift
//  Challenge-1
//
//  Created by Abdulvokhid Azimov on 12.03.2023.
//

import SwiftUI

//Time conversions: User choose seconds, minutes, hours or days
struct ContentView: View {
    
    @State private var input = 600
    //Hiding the key
    @FocusState private var inputIsFocused: Bool
    
    var day = 86400
    var hour = 3600
    var minute = 60
    //calcules seconds to minutes
    var outputMinute: Int {
        let minutes = (input / minute)
        return minutes
    }
    //calcules seconds to hours
    var outputHour: Int {
        let hours = (input / hour)
        return hours
    }
    var outputDay: Int {
        let days = (input / day)
        return days
    }
    var body: some View {
        NavigationStack {
            Form{
                //deals with hours
                Section {
                    TextField("Seconds", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
                } header: {
                    Text("Convert seconds to other times")
                }
                Section {
                    Text("\(outputMinute) minute")
                } header: {
                    Text("From seconds to minutes")
                }
                Section{
                    Text("\(outputHour) hour")
                }header: {
                    Text("From seconds to hour")
                }
                Section {
                    Text("\(outputDay) day")
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
