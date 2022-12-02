//
//  AddTransactionView.swift
//  CashTrack
//
//  Created by Andres Gomez on 12/1/22.
//

import SwiftUI

struct AddTransactionView: View {
    
    @State private var inputid: Int = 1
    @State private var inputdate: String = ""
    @State private var inputmerchant: String = ""
    @State private var inputamount: Double = 0.0
    @State private var inputtype: TransactionType.RawValue = ""
    @State private var inputcategory: String = ""
    @State private var inputisTransfer: Bool = false
    @State private var inputisExpense: Bool = false
    
    var body: some View {
        VStack{
            TextField("Enter date: ", text: $inputdate)
            TextField("Enter merchant: ", text: $inputmerchant)
            TextField("Enter amount: ", value: $inputamount, formatter: NumberFormatter())
            TextField("Enter type: ", text: $inputtype)
            TextField("Enter category: ", text: $inputcategory)
            Button("Add") {
                //take the values from the text fields
                var mytransaction = Transaction(id: 45, date: inputdate, merchant: inputmerchant, amount: inputamount, type: inputtype, category: inputcategory, isTransfer: inputisTransfer, isExpense: inputisExpense)
            }
            
            
        }
        
    }
}

struct AddTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        AddTransactionView()
    }
}
