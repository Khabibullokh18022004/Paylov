//
//  RegistrationPage.swift
//  Paylov
//
//  Created by Habibulloh on 15/03/23.
//

import SwiftUI

struct PushNotificationLabel: View {
    
    var body: some View {
        
        ZStack() {

            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 1, green: 0.455, blue: 0.455))
                .frame(width: 335, height: 52)
            
            HStack {
                Text("Введите номер телефона")
                    .font(.custom("Rubik-Regular", size: 14))
                    .foregroundColor(.white)
                    .kerning(-0.3)
                    .frame(width: 269, height: 18)
                
                Spacer()
            }
            
            .padding(.all, 16)
            .background(Color.clear)

        }
        .padding(.top, -300)
        .padding(.leading, 1)
    }
}





struct PushNotificationLabel_Previews: PreviewProvider {
    static var previews: some View {
        PushNotificationLabel()
    }
}
