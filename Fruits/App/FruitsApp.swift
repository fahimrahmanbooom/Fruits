//
//  FruitsApp.swift
//  Fruits
//
//  Created by Fahim Rahman on 8/14/21.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnbording: Bool = true
    
    var body: some Scene {
        
        WindowGroup {
            if isOnbording {
                OnbordingView()
            }
            else {
                FruitListView()
            }
        }
    }
}
