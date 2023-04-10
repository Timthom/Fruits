//
//  OnbordingView.swift
//  Fruits
//
//  Created by Thomas Månsson on 06/04/2023.
//

import SwiftUI

struct OnbordingView: View {
    // MARK: - PROPERTYS
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
// MARK: - PREVIEW

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView(fruits: fruitsData)
    }
}
