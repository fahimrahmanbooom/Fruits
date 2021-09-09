//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Fahim Rahman on 8/18/21.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - Properties
    
    var labelText: String
    var labelImage: String
    
    
    // MARK: - Body
    
    var body: some View {
        
        HStack {
    
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: labelImage)
            
        } //: HStack
    }
}


// MARK: - Preview

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "fruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
