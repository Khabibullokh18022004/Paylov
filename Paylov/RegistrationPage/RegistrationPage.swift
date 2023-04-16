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
                    }.padding(.horizontal)
                    HStack {
                        VStack {
                            
                                TextField("+998 71-200-70-07", text: $phoneNumber)
                            
                            
                        }
                    }
                    .foregroundColor(.black)
                    .frame(width: 330, height: 20)
                    .padding()
                    .background(Color.black.opacity(0.07))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }.padding()
                Spacer()
              
            }
        }.navigationBarBackButtonHidden(true)
    }
    }
            
 

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage(buttonHide: true, buttonHide1: true)
    }
}
