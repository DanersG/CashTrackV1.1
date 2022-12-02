//
//  TransactionModel.swift
//  CashTrack
//
//  Created by Andres Gomez on 11/12/22.
//......

import Foundation

struct Transaction: Identifiable {
    let id: Int
    let date: String
    let merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var category: String
    var isTransfer: Bool
    var isExpense: Bool
    
    var dateParsed: Date {
        date.dateParsed()
    }
    
    var signedAmount: Double {
        return type == TransactionType.credit.rawValue ? amount : -amount
    }
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}
