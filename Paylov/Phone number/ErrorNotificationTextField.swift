//
//  ErrorNotificationTextField.swift
//  Paylov
//
//  Created by Habibulloh on 10/04/23.
//

import SwiftUI

struct ErrorNotificationTextField: View {
    @State private var phoneNumber: String = ""
     @State private var showError: Bool = false
        var body: some View {

            
            VStack {

                        Button("Submit") {
                            if phoneNumber.count != 8 {
                                showError = true
                            }
                            
                        }
                        
                    }
                    .animation(.easeOut(duration: 0.3)) // Add animation to the VStack
                    .background(Color.clear)
                    .overlay(
                        Group {
                            if showError {
                                ZStack(alignment: .center) {
                                 
                                    RoundedRectangle(cornerRadius: 16)
                                        .foregroundColor(Color(red: 1, green: 0.455, blue: 0.455))
                                        .frame(width: 335, height: 52)
                                
                                        .animation(.easeOut(duration: 0.3)) // Add animation to the error notification
                                

                                    ZStack()
                                    {
                                        
                                        
                                        HStack {
                                            Text("Введите номер телефона")
                                                .font(.custom("Rubik-Regular", size: 14))
                                                .foregroundColor(.white)
                                                .kerning(-0.3)
                                                .frame(width: 269, height: 18)
                                                .padding(.trailing, 150)
                                        }    .padding(.leading, -260)
                                        Spacer()
                                        Ellipse()
                                            .stroke(Color.white, lineWidth: 2)
                                        
                                            .frame(width: 32, height: 32)
                                        
                                            .opacity(1)
                                        Spacer()
                                        HStack
                                        {
                                            
                                            Image("icon_krest")
                                                .animation(Animation.linear(duration: 3))
                                            // .padding( .leading, 280)
                                            
                                        }.padding(.top, 3 )
                                    
                                        
                                    }.padding(.leading, 280)
                                        .animation(.easeOut(duration: 0.3))
                                }  .padding(.bottom, 650)
                                   // .padding(.leading, 1)
                                .transition(.move(edge: .top))
                            }
                        }
                        .onTapGesture {
                            withAnimation {
                                showError = false
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    )
                }
    
}


struct ErrorNotificationTextField_Previews: PreviewProvider {
    static var previews: some View {
        ErrorNotificationTextField()
    }
}
