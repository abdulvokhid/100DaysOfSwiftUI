//
//  Expenseltem.swift
//  iExpense
//
//  Created by Abdulvokhid Azimov on 18.04.2023.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
