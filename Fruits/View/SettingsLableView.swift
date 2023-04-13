//
//  SettingsLableView.swift
//  Fruits
//
//  Created by Thomas Månsson on 13/04/2023.
//

import SwiftUI

struct SettingsLableView: View {
    // MARK: - PROPERTYS
    
    var lableText: String
    var lableImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(lableText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: lableImage)
        }
    }
}
// MARK: PREVIEW

struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(lableText: "Fruits", lableImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
