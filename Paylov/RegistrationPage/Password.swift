//
//  Password.swift
//  Paylov
//
//  Created by Habibulloh on 12/04/23.
//

import SwiftUI

struct Password: View {
    @State var buttonpressed: Int = 0
    @State var isPressed: Bool = true
    @State private var name: String = ""
    @State private var phoneNumber: String = ""
    @State var showPassword1: Bool
    @State var showPassword2: Bool
    @State var password1: String
    @State var password2: String
    @State var buttonHide: Bool
    @State var buttonHide1: Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                      if  isPressed == true
                        {
                          self.presentationMode.wrappedValue.dismiss()

                      }
                        
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
                

                VStack {
                    HStack {
                        Text("Пароль")
                            .fontWeight(.bold)
                        Spacer()
                    }.padding(.horizontal, -2)
                    HStack {
                        VStack {
                            if showPassword1 {
                                TextField("Придумайте надежный пароль", text: $password1)
                            }
                            else {
                                SecureField("Придумайте надежный пароль", text: $password1)
                            }
                        }
                        .onReceive(password1.publisher.collect()) { newValue in
                            let filtered = newValue.filter { $0.isNumber }
                            if filtered.count > 0 && password1 == password2 {
                                buttonHide1 = false
                            } else {
                                buttonHide1 = true
                            }
                        }
                        Button(action: {
                            showPassword1.toggle()
                        }){
                            Image(systemName: showPassword1 ? "eye" : "eye.slash")
                                .foregroundColor(.black.opacity(0.3))
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
                        Text("Подтвердите пароль")
                            .fontWeight(.bold)
                        Spacer()
                    }.padding(.horizontal)
                    HStack {
                        VStack {
                            if showPassword2 {
                                TextField("Повторно введите пароль", text: $password2)
                            }
                            else {
                                SecureField("Повторно введите пароль", text: $password2)
                            }
                        }
                        .onReceive(password2.publisher.collect()) { newValue in
                            let filtered = newValue.filter { $0.isNumber }
                            if filtered.count > 0 && password2 == password1 {
                                buttonHide1 = false
                            } else {
                                buttonHide1 = true
                            }
                        }
                        Button(action: {
                            showPassword2.toggle()
                        }){
                            Image(systemName: showPassword2 ? "eye" : "eye.slash")
                                .foregroundColor(.black.opacity(0.3))
                        }
                    }
                    .foregroundColor(.black)
                    .frame(width: 330, height: 20)
                    .padding()
                    .background(Color.black.opacity(0.07))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }.padding()
                Spacer()
                
                VStack
                {
                    
                    VStack
                    {
                      
                    }
                    Button(action:
                            {
//                        buttonpressed()
                    })
                    {
                        
                        NavigationLink(destination: PinCode()){
                            ZStack{ RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor( Color(red: 0.914, green: 0.925, blue: 0.941, opacity: 1.0))
                                    .frame(width: 335, height: 44)
                                Text("Продолжить")
                                    .font(Font.custom("Rubik-Medium", size: 14))
                                    .foregroundColor(Color(red: 0.749, green: 0.773, blue: 0.82))
                                    .kerning(-0.3)
                                    .multilineTextAlignment(.center)
                                
                                    .cornerRadius(9)
                                
                            }
                        }
                    }
                }}
        }.navigationBarBackButtonHidden(true)
    }
}

struct Password_Previews: PreviewProvider {
    static var previews: some View {
       Password(showPassword1: false, showPassword2: false, password1: "", password2: "", buttonHide: true, buttonHide1: true)
    }
}
