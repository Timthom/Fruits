//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Thomas Månsson on 13/04/2023.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTYS
    var name: String
    var content: String? = nil
    var linkLable: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLable != nil && linkDestination != nil) {
                    Link(linkLable!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
               
            }
        }
        
        
    }
}
// MARK: - PREVIEW
 
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "ThomasCreate")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
