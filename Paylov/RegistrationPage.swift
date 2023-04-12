//
//  RegistrationPage.swift
//  Paylov
//
//  Created by Habibulloh on 27/03/23.
//

import SwiftUI

struct RegistrationPage: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>

    var body: some View {
        
        VStack {
          
            
            HStack
            {
                VStack{
                    Spacer()
                    Text("Регистрация")
                        .foregroundColor(Color(red: 0.2, green: 0.251, blue: 0.333, opacity: 1))
                        .font(Font.custom("Rubik-Medium", size: 16))
                        .kerning(-0.3)
                        .multilineTextAlignment(.center)
                        .frame(width: 100, height: 21)
                        .background(Color.white)
                }.padding(.bottom, 460)
                
//                Text("Информация")
//                    .foregroundColor(Color(red: 0.153, green: 0.192, blue: 0.251))
//                    .font(Font.custom("Rubik-Medium", size: 12))
//                    .kerning(-0.3)
//                    .multilineTextAlignment(.center)
//                    .frame(width: 125, height: 16)
//                    .background(Color.white)
            }.padding(.bottom, 300)

            
            
            
            
            
            
            
            
            
            
            Spacer()
                .navigationBarBackButtonHidden(true)
                .toolbar(content:
                            {
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        },
                               label: {
                            Image(systemName: "arrow.backward")
                                .foregroundColor(Color.black)
                            
                            
                        })
                    }
                }
                         
                )
            
        }
    }
    }
            
 

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
