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
    @State private var inputUnite = UnitDuration.seconds
    @State private var outputUnite = UnitDuration.hours
    //Hiding the key
    @FocusState private var inputIsFocused: Bool
    
    //options to choose for picker style
   // let times = ["seconds", "minutes", "days"]
    let unit: [UnitDuration] = [.seconds,.minutes ,.hours]
    let formatter: MeasurementFormatter
    init() {
        formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
        formatter.unitStyle = .long
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
                    Text("final")
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
