//
//  Expenses.swift
//  iExpense
//
//  Created by Abdulvokhid Azimov on 18.04.2023.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
