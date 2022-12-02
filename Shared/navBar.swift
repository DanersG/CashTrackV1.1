//
//  navBar.swift
//  CashTrack
//
//  Created by Andres Gomez on 11/12/22.
// ......

import SwiftUI

struct navBar: View {
    var body: some View {
        
        TabView {
//            ForEach(TransactionListViewModel.transactions.prefix(5).enumerated()) {
//                transaction in TransactionRow(transaction: transaction)
//            }
            TransactionRow(transaction: transactionPreviewData)
                .tabItem(){
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                    Text("Home")
                }
            ContentView()
                .tabItem() {
                    Text("Add")
                }
            ContentView()
                .tabItem() {
                    Text("Categories")
                }
        }.onAppear() {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            
            // correct the transparency bug for Navigation bars
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithOpaqueBackground()
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        }
        
    }
}

struct navBar_Previews: PreviewProvider {
    static var previews: some View {
        navBar()
    }
}
