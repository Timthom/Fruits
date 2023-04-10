//
//  FruitsApp.swift
//  Fruits
//
//  Created by Thomas Månsson on 06/04/2023.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnbordingView()
            } else {
                ContentView()
            }
        }
    }
}
