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
                VStack{
                    Spacer()
                    Text("Регистрация")
                        .foregroundColor(Color(red: 0.2, green: 0.251, blue: 0.333, opacity: 1))
                        .font(Font.custom("Rubik-Medium", size: 16))
                        .kerning(-0.3)
                        .multilineTextAlignment(.center)
                        .frame(width: 100, height: 21)
                        .background(Color.white)
                }.padding(.bottom, 760)
//                HStack{
//                    Rectangle()
//                        .frame(width: 375, height: 3)
//                        .foregroundColor(Color.white)
//                        .background(Color.red)
//
//                }.padding(.all)
                
                
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
                
        NavigationView{
            HStack
            {
                Text("Hello")
            }
        }
        .navigationBarBackButtonHidden(true)
           }
    }
            
 

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
