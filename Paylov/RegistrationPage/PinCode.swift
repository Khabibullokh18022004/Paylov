//
//  PinCode.swift
//  Paylov
//
//  Created by Habibulloh on 12/04/23.
//

import SwiftUI

struct PinCode: View {
    
    @State var buttonpressed: Int = 0
    
    var body: some View {
        
        VStack{
            
        
        HStack {
            
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
            Spacer()
            ZStack {
                
                    }
        
    }
        
    }
}

struct PinCode_Previews: PreviewProvider {
    static var previews: some View {
        PinCode()
    }
}
