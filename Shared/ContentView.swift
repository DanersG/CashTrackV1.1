//
//  ContentView.swift
//  Shared
//
//  Created by Andres Gomez on 11/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack(alignment: .leading, spacing: 24){
                    // MARK: Title
                    Text("Add Invoice").foregroundColor(Color.text)
                        .font(.title2)
                        .bold()
                }
                .padding()
                .frame(maxWidth: .infinity)
                 // MARK: HOLA
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // MARK: Notification icon
                ToolbarItem{
                     Image(systemName: "arrow.down.right.circle")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon , .primary)
                    
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
