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
    @State var buttonHide: Bool
    @State var buttonHide1: Bool
    @Environment(\.presentationMode) var presentationMode
    @State private var w1 = "Условия пользования"
    @State private var w2 =  "Политикой конфиденциальности"
    @State var showingBottomSheet2 = false
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                        
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
                .font(.custom("", size: 16))
                

                VStack {
                    HStack {
                        Text("Имя")
                            .fontWeight(.bold)
                        Spacer()
                    }.padding(.horizontal, -2)
                    HStack {
                        VStack {
                                TextField("Введите ваше имя", text: $name)
                        }
               
                       
                    }
                    .foregroundColor(.black)
                    .frame(width: 330, height: 20)
                    .padding()
                    .background(Color.black.opacity(0.07))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }.padding()
                
                VStack {
                    HStack {
                        Text("Номер регистрации")
                            .fontWeight(.bold)
                        Spacer()
                    }.padding(.horizontal,-2)
                    HStack {
                        VStack {
                            TextField("+998 71-200-70-07", text: $phoneNumber)
                        }
                        .onChange(of: phoneNumber) { newValue in
                          
                            let numericString = newValue.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
                            var formattedString = ""

                            for (index, digit) in numericString.enumerated() {
                                switch index {
                                case 2, 5, 7:
                                    formattedString += "-"
                                    fallthrough
                                default:
                                    formattedString.append(digit)
                                }
                            }

                            phoneNumber = formattedString
                        }
                        Button(action: {})
                        {
                        NavigationLink(destination: PhoneNumber())
                        {
                            HStack
                            {Image("write")}
                        }
                        }}
                    
                    .foregroundColor(.black)
                    .frame(width: 330, height: 20)
                    .padding()
                    .background(Color.black.opacity(0.07))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding()
                Spacer()
                
                
                VStack
                {
                                VStack(spacing: 0) {
                                    
                                    
                                    Text("Нажав “продолжить” вы подтверждаете свое согласие с \(w1) и \(w2)")
                                    
                                        .foregroundColor(Color.black)
                                        .font(Font.custom("Rubik-Regular", size: 12))
//                                        .kerning(-0.3)
                                        .padding(.horizontal, 20)

                                       
                                }.sheet(isPresented: $showingBottomSheet2)
                    {
                        Text("hello")
                    }
                                
                          
                    Button(action:
                            {
                        buttonpressed = 0
                    })
                    {
                       
                        NavigationLink(destination: Password(showPassword1: false, showPassword2: false, password1: "", password2: "", buttonHide: false, buttonHide1: false)){
                            ZStack{
                                
                                
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(phoneNumber.count == 12 ? Color(red: 0.106, green: 0.588, blue: 0.518): Color(red: 0.914, green: 0.925, blue: 0.941, opacity: 1.0))
                                    .frame(width: 335, height: 44)
                                Text("Продолжить")
                                    .font(Font.custom("Rubik-Medium", size: 14))
                                    .foregroundColor(Color.white)
                                    .kerning(-0.3)
                                    .multilineTextAlignment(.center)
                                
                                    .cornerRadius(9)
                                
                            }
                            
                        }
                    }
                }
              
            }
        }.navigationBarBackButtonHidden(true)
    }
    }
            
 

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage(buttonHide: true, buttonHide1: true)
    }
}
