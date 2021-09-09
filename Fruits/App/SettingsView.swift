//
//  SettingsView.swift
//  Fruits
//
//  Created by Fahim Rahman on 8/18/21.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    
    // MARK: - Body
    
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
                VStack(spacing: 20, content: {
                    
                    // section 1
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fruits", labelImage: "info.circle"), content: {
                                    
                                    Divider().padding(.vertical, 4)
                                    
                                    HStack(alignment: .center, spacing: 10) {
                                        
                                        Image("logo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                            .cornerRadius(9)
                                        
                                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                            .font(.footnote)
                                        
                                    } //: HStack
                                }) //: GroupBox
                    
                    // section 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"), content: {
                        
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                             
                        }) //: Toggle
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    }) //: GroupBox
                    
                    
                    // section3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"),
                             content: {
                                
                                SettingsRowView(name: "Developer & Designer", content: "Fahim Rahman")
                                
                                SettingsRowView(name: "Compatibility", content: "iOS 14.0+")
                                
                                SettingsRowView(name: "Website", linkLabel: "Portfolio", linkDestination: "http://fahimrahman.tech")
                                
                                SettingsRowView(name: "Twitter", linkLabel: "@fahimrahman0000", linkDestination: "https://twitter.com/fahimrahman0000")
                                
                                SettingsRowView(name: "Quora", linkLabel: "Fahim-Rahman-6", linkDestination: "https://bn.quora.com/profile/Fahim-Rahman-6")
                                
                                SettingsRowView(name: "SwiftUI", content: "2.0")
                                
                                SettingsRowView(name: "Version", content: "1.1.0")
                                
                             }) //: GroupBox
                    
                }) //: VStack
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Image(systemName: "xmark")
                    
                })) //: Button
                .padding()
            }) //: ScrollView
        } //: NavigationView
    }
}




// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
