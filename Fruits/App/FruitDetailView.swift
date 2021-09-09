//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Fahim Rahman on 8/17/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
    
    // MARK: - Body
    
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
                VStack(alignment: .center, spacing: 20, content: {
                    
                    // header
                    FruitHeaderView(fruit: fruit)
                    
                    // vstack
                    VStack(alignment: .leading, spacing: 20, content: {
                        
                        // title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        // subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }) //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }) //: VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }) //: ScrollView
            .edgesIgnoringSafeArea(.top)
        } //: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


// MARK: - Preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData.first!)
    }
}
