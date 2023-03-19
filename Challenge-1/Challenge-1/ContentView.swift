//
//  ContentView.swift
//  Challenge-1
//
//  Created by Abdulvokhid Azimov on 12.03.2023.
//

import SwiftUI

//Time conversions: User choose seconds, minutes, hours or days
struct ContentView: View {
    
    @State private var input: Double = 0.0
    //Hiding the key
    @FocusState private var inputIsFocused: Bool
    
    let day = 86400
    let hour = 3600
    let minute = 60
    //calcules seconds to minutes
    var outputMinute: Double {
        let minutes: Double = (input / Double(minute))
        return minutes
    }
    //calcules seconds to hours
    var outputHour: Double {
        let hours: Double = (input / Double(hour))
        return hours
    }
    var outputDay: Double {
        let days: Double = (input / Double(day))
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
                    Text("\(outputMinute.formatted()) minute")
                } header: {
                    Text("From seconds to minutes")
                }
                Section{
                    Text("\(outputHour.formatted()) hour")
                }header: {
                    Text("From seconds to hour")
                }
                Section {
                    Text("\(outputDay.formatted()) day")
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
