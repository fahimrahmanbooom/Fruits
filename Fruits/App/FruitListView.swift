//
//  FruitListView.swift
//  Fruits
//
//  Created by Fahim Rahman on 8/16/21.
//

import SwiftUI

struct FruitListView: View {
    
    // MARK: - Properties
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(fruits) { item in
                    
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    } //: NavigationLink
                } //: forEach
            } //: List
            .listStyle(PlainListStyle())
            
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true

            }, label: {
                Image(systemName: "slider.horizontal.3")

            })) //: Button
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
        } //: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


// MARK: - Preview

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
