//
//  CustomTabBar.swift
//  Paylov
//
//  Created by Habibulloh on 26/04/23.
//

import SwiftUI


struct TabBar: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            ZStack {
                
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 24, x: 0, y: -4)
                    .cornerRadius(10)
                    .overlay(
                           RoundedRectangle(cornerRadius: 10)
                               .stroke(Color.gray, lineWidth: 2)
                       )
                
                HStack {
                    TabBarButton(imageName: "house", isSelected: selectedTab == 0) {
                        selectedTab = 0
                       
                    }
                    
                    TabBarButton(imageName: "arrows", isSelected: selectedTab == 1) {
                        selectedTab = 1
                    }
                    
                    TabBarButton(imageName: "Image 1", isSelected: selectedTab == 2) {
                        selectedTab = 2
                    }
                    
                    TabBarButton(imageName: "Image", isSelected: selectedTab == 3) {
                        selectedTab = 3
                    }
                    
                    TabBarButton(imageName: "Image 2", isSelected: selectedTab == 4) {
                        selectedTab = 4
                    }
                }
                .padding(.bottom, 18.0)
                .frame(width: 375, height: 91)
            }.padding(.top, 68)
            .frame(height: 91)
        }
    }
}

struct TabBarButton: View {
    var imageName: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .center, spacing: 4) {
                Image(imageName)
                    .renderingMode(isSelected ? .original : .template) // Change the image color based on selection
                    .foregroundColor(isSelected ? .red : .gray) // Change the image color based on selection
            }
        }
    }
}



struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
