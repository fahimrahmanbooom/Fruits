//
//  OnbordingView.swift
//  Fruits
//
//  Created by Fahim Rahman on 8/15/21.
//

import SwiftUI

struct OnbordingView: View {
    
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(fruits[0...2]) { item in
                FruitCardView(fruit: item)
            } //: Loop
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}


// MARK: - Preview

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}
