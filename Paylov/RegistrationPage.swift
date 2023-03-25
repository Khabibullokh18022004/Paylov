//
//  RegistrationPage.swift
//  Paylov
//
//  Created by Habibulloh on 15/03/23.
//

import SwiftUI

struct RegistrationPage: View {
    var body: some View {

            
            VStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white.opacity(0.12))
                    .frame(width: 335, height: 44)
                // Add any content here, for example:
                Text("Hello, World!")
                    .foregroundColor(.black)
            }
            .frame(width: 335, height: 44)
            .offset(y: 26)
            
        
    }
}

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
