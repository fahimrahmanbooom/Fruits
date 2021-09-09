//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Fahim Rahman on 8/18/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - Properties
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    // MARK: - Body
    
    var body: some View {
        
        VStack {
            
            Divider().padding(.vertical, 4)
            
            HStack {
                
                Text(name)
                    .foregroundColor(.gray)
                
                Spacer()
                
                if content != nil {
                    Text(content!)
                }
                else if linkLabel != nil && linkDestination != nil {
                
                        Link(linkLabel!, destination: URL(string: "\(linkDestination!)")!)
                        
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.red)
                }
                else {
                    EmptyView()
                }
            } //: HStack
        } //: VStack
    }
}


// MARK: - Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Fahim Rahman")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Website", linkLabel: "Portfolio", linkDestination: "fahimrahman.tech")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
