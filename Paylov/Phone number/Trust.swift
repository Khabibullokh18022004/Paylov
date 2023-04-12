//
//  Trust.swift
//  Paylov
//
//  Created by Habibulloh on 12/04/23.
//

import SwiftUI

struct Trust: View {
    @State private var isToggled = false
      
    var body: some View {
//        ZStack{
//            Color.blue
//            .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 12)
                       .fill(Color.white.opacity(0.12))
                       .frame(width: 345, height: 56)
                       .cornerRadius(8)
                     
                       .padding(.horizontal)
                       .padding(.leading, 0)
                       .padding(.top, 250)
                       
            HStack{
                    Image("smile")
                    .padding(.trailing)
                    Text("Доверять устройству")
                    .bold(true)
                        .font(.custom("Rubik-Medium", size: 14))
                        .foregroundColor(Color.white)
                        .kerning(-0.3)
                        .lineSpacing(1.1)
                        .padding(.trailing, 110)
                        .padding()
            
                }.padding(.top, 250)
            HStack {
                Toggle(isOn :$isToggled){}.padding(.trailing)
                    .padding()
            }.padding(.top, 250)
        }
//    }
}

struct Trust_Previews: PreviewProvider {
    static var previews: some View {
        Trust()
    }
}
