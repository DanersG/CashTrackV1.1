//
//  Preview Data.swift
//  CashTrack
//
//  Created by Andres Gomez on 11/12/22.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "10/09/2001", merchant: "Seek Discomfort", amount: 50.70, type: "debit",
                                         category: "Clothing", isTransfer: false, isExpense: true)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
