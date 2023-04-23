//
//  PinCode.swift
//  Paylov
//
//  Created by Habibulloh on 12/04/23.
//

import SwiftUI

struct PinCode: View {
    
    @State var buttonpressed: Int = 0
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        VStack{
            
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
                    .foregroundColor(Color.black)
            }
            Spacer()
            Spacer()
            Button(action: {
                buttonpressed = 2
            }) {
                Text("Пин-код")
                    .foregroundColor(.black)
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
                .foregroundColor(Color("Color2"))
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 4))
                .frame(width: 12)
                .foregroundColor(Color("Color2"))
            Rectangle()
                .frame(width: 110, height: 3)
                .foregroundColor(Color("Color2"))
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 4))
                .frame(width: 12)
                .foregroundColor(Color("Color2"))
            Rectangle()
                .frame(height: 3)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color("Color2"))
        }
        .font(.custom("", size: 16))
            Spacer()
            VStack {
                Home()
                    }
        
    }
        .navigationBarBackButtonHidden()
    }
}

struct PinCode_Previews: PreviewProvider {
    static var previews: some View {
        PinCode()
    }
}
