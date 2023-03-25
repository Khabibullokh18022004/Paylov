//
//  SplashScreenView.swift
//  Paylov
//
//  Created by Habibulloh on 15/03/23.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
 

    
    var body: some View {
        if isActive
        {
            LanguageView()
        }
        else{
            
            
            ZStack{
                
                Image("bImage")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Image("paylovLogo")
                    Spacer(minLength: 150)
                    //Icon on bottom
                    ZStack{
                        AnimationView()
                    }
                }
                
                .onAppear()
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0)
                    {
                        self.isActive = true
                    }
                }  
                
            }
            
        }
    }  
}
  

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
