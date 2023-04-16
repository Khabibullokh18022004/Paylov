//
//  RegistrationPage.swift
//  Paylov
//
//  Created by Habibulloh on 27/03/23.
//

import SwiftUI

struct RegistrationPage: View {
    
    @State var buttonpressed: Int = 0
    @State var isPressed: Bool = true
    @State private var name: String = ""
    @State private var phoneNumber: String = ""
       

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                      if  isPressed == true
                        {}
                        
                    })
                    {
                       
                        Image(systemName: "arrow.left")
                            .foregroundColor(.black)
                    }
                    .padding()
                    
                    Spacer()
                    Text("Регистрация")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.bottom) // arrow and Регистрация
                
                HStack {
                    Spacer()
                    Button(action: {
                        buttonpressed = 0
                    }) {
                        Text("Информация")
                            .foregroundColor(buttonpressed > 0 ? Color("Color1") : .black)
                    }
                    Spacer()
                    Spacer()
                    Button(action: {
                        buttonpressed = 1
                    }) {
                        Text("Пароль")
                            .foregroundColor(buttonpressed > 1 ? Color("Color1") : (buttonpressed == 1 ? .black : .gray))
                    }
                    Spacer()
                    Spacer()
                    Button(action: {
                        buttonpressed = 2
                    }) {
                        Text("Пин-код")
                            .foregroundColor(buttonpressed > 1 ? .black : .gray)
                    }
                    Spacer()
                }
                .font(.custom("", size: 16))
                
                HStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 3)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color("Color2"))
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 4))
                        .frame(width: 12)
                        .foregroundColor(Color("Color2"))
                    Rectangle()
                        .frame(width: 110, height: 3)
                        .foregroundColor(buttonpressed > 0 ? Color("Color2") : .gray)
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 4))
                        .frame(width: 12)
                        .foregroundColor(buttonpressed > 0 ? Color("Color2") : .gray)
                    Rectangle()
                        .frame(width: 110, height: 3)
                        .foregroundColor(buttonpressed > 1 ? Color("Color2") : .gray)
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 4))
                        .frame(width: 12)
                        .foregroundColor(buttonpressed > 1 ? Color("Color2") : .gray)
                    Rectangle()
                        .frame(height: 3)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(buttonpressed > 1 ? Color("Color2") : .gray)
                }
                
                Spacer()
                HStack
                {
                    Text("Имя")
                        .foregroundColor(Color(red: 0.2, green: 0.251, blue: 0.333))
                        .font(Font.custom("Rubik-Medium", size: 14))
                        .kerning(-0.3)
                        .lineSpacing(1.1 * 14)
                        .frame(width: 335, height: 18, alignment: .leading)
                        .background(Color.white)

                }.padding(.bottom, 590)

//                HStack{
//                    TextField("Name", text: $name)
//                        .padding(.horizontal, 16)
//                        .frame(height: 44)
//                        .background(
//                            ZStack {
//                                Rectangle()
//                                    .foregroundColor(Color(red: 0.969, green: 0.969, blue: 0.969))
//                                    .cornerRadius(8)
//                            }
//                        )
//                }.padding(.bottom, 600)
//                HStack{
//
//                            TextField("Phone Number", text: $phoneNumber)
//                                .padding(.horizontal, 16)
//                                .frame(height: 44)
//                                .keyboardType(.numberPad)
//                                .background(
//                                    ZStack {
//                                        Rectangle()
//                                            .foregroundColor(Color(red: 0.969, green: 0.969, blue: 0.969))
//                                            .cornerRadius(8)
//                                        }
//                                )
//                        }
//                        .padding(.horizontal, 20)
//                        .padding(.top, 26)
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            }
        }.navigationBarBackButtonHidden(true)
    }
    }
            
 

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
