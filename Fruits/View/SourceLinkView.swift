//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Fahim Rahman on 8/17/21.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        
        GroupBox {
            
            HStack {
                
                Text("Content Source")
                
                Spacer()
                
                Link(destination: URL(string: "https://www.wikipedia.com")!, label: {
                    
                    Text("Wikipedia")
                    
                    Image(systemName: "arrow.up.right.square")
                }) //: Link
                .font(.footnote)
            } //: HStack
        } //: GroupBox
    }
}


// MARK: - Preview

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
