//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Fahim Rahman on 8/17/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
    
    let nutrients: [String] = [
        "Energy",
        "Sugar",
        "Fat",
        "Protein",
        "Vitamins",
        "Minerals"
    ]
    
    // MARK: - Body
    
    var body: some View {
        
        GroupBox {
            
            DisclosureGroup("Nutritional value per 100g", content: {

                ForEach(0..<nutrients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        
                        Group {
                            
                            Image(systemName: "info.circle")
                            
                            Text(nutrients[item])
                            
                        } //: Group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                    } //: HStack
                } //: ForEach
            }) //: DisclosureGroup
        } //: GroupBox
    }
}


// MARK: - Preview

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData.first!)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
