//
//  PhoneNumber.swift
//  Paylov
//
//  Created by Habibulloh on 15/03/23.
//

import SwiftUI

struct PhoneNumber: View {
    @State private var text: String = "+998  "
    var body: some View {
        NavigationView {
            
            ZStack {
                // background image
                Image("bImage")
                    .resizable()
                    .ignoresSafeArea()
                // my logo
                
                VStack {
                    Image("paylovLogo")
                    Text("Благие поступки в каждом платеже")
                        .foregroundColor(Color.white)
                    
                }.position(x: 200, y: 50)
                

                VStack{
                    Text("Номер телефона")
                    .bold(true)
                    .foregroundColor(Color.white)
                    TextField("                 00-000-00-00", text: $text)
                        .foregroundColor(.blue)

                          .textFieldStyle(RoundedBorderTextFieldStyle())
                           .padding(.horizontal).background(Color.clear)
                }.position(x: 215, y: 250)
                VStack{
                    Spacer()
                    ZStack {
                        Circle()
                            .stroke(Color.white, lineWidth: 4)
                            .frame(width: 100)
                        
                        VStack {
                            NavigationLink(destination: RegistrationPage()) {
                                Image(systemName: "arrow.right.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 55))
                            }
                        }
                    }
                    
                }
            }
            .navigationBarTitle("Вход", displayMode: .inline)
            .foregroundColor(.white)
        }
                
        }
      
        }

    

struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}
