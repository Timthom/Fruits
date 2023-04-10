//
//  ContentView.swift
//  Fruits
//
//  Created by Thomas Månsson on 06/04/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTYS
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }//: NAVIGATION
        .padding()
    }
}
// PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
