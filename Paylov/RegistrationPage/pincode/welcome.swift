//
//  welcome.swift
//  Paylov
//
//  Created by Habibulloh on 23/04/23.
//

import SwiftUI

struct welcome: View {
    var body: some View {
       NavigationView
        {
            ZStack
            {
                Image("bImage")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    
                VStack
                    {
                        Image("paylovLogo")
                        
                            .resizable()
                            .frame(width: 129, height:  41.61)
                    }
                    .padding(.top, 60.0)
                   
                    VStack(alignment: .center)
                    {
                    Text("Добро пожаловать!")
                        .font(Font.custom("Rubik-Bold", size: 32))
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 317, height: 42)
                    
                        .overlay(
                            Rectangle()
                                .fill(Color.clear)
                            
                        )
                        .multilineTextAlignment(.center)
                        .lineSpacing(12)
                        .padding(.leading, 29)
                        .padding(.top, 281)
                    }
                    .padding(.top, -130.0)
                    Spacer()
                    VStack {
                               Text("Теперь вы можете пользоваться самым удобным приложением среди равных!")
                                   .font(Font.custom("Rubik-Regular", size: 14))
                                   .foregroundColor(Color.white)
                                   .multilineTextAlignment(.center)
                                   .lineSpacing(4)

                    }.padding(.bottom, 80)
                    
                    ZStack {
                        
                        Color.white.opacity(0.16)
                            .cornerRadius(8)
                        Text("Добавить карту")
                            .foregroundColor(.white)
                    }
                    .frame(width: 160, height: 44)
                    ZStack
                    {
                        Color.white
                            .cornerRadius(8)
                        Text("Пропустить")
                            .foregroundColor(.black)
                    }.frame(width: 160, height: 44)
                    
                
            }
                    
            }
            
        }
    }
}

struct welcome_Previews: PreviewProvider {
    static var previews: some View {
        welcome()
    }
}
