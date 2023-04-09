//
//  RegistrationPage.swift
//  Paylov
//
//  Created by Habibulloh on 27/03/23.
//

import SwiftUI

struct RegistrationPage: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @State private var phoneNumber: String = ""
     @State private var showError: Bool = false
        var body: some View {
    
         //   VStack {
                
//                Spacer()
//                    .navigationBarBackButtonHidden(true)
//                    .toolbar(content:
//                                {
//                        ToolbarItem(placement: .navigationBarLeading)
//                                    {
//                            Button(action: {
//                                presentationMode.wrappedValue.dismiss()
//                            },
//                            label: {
//                                Image("arrow-leftarrowLeft")
//                                    .foregroundColor(.blue)
//                                Text("Hello")
//                            })
//                        }
//                    }
//                    )
                
                
             
         //   }
            
            VStack {
                        TextField("Enter your phone number", text: $phoneNumber)
                            .padding()
                        
                        Button("Submit") {
                            if phoneNumber.count != 8 {
                                showError = true
                            }
                            
                        }
                        
                        Spacer()
                    }
                    .animation(.easeOut(duration: 0.3)) // Add animation to the VStack
                    .overlay(
                        Group { // Use Group to conditionally display the error notification
                            if showError {
                                ZStack {
                                    Color.red
                                        .frame(height: 40)
                                        .animation(.easeOut(duration: 0.3)) // Add animation to the error notification
                                    Text("Please enter a valid 8-digit phone number")
                                        .foregroundColor(.white)
                                }
                                .transition(.move(edge: .top)) // Add transition to the error notification
                            }
                        }
                        .onTapGesture {
                            withAnimation {
                                showError = false // Dismiss the error notification when it is tapped
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .top) // Make the error notification span the entire width of the screen
                    )
                }
            }
            
 

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
