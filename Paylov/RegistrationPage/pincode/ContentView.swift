//
//  ContentView.swift
//  AppLock
//
//  Created by Habibulloh on 17/04/23.
//

import SwiftUI


struct ContentView_1: View {
    var body: some View {
        
        NavigationView{
            
            Home()
        }
    }
}

struct ContentView_1_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView_1()
    }
}

struct Home : View
{
    
    @State var unLocked = false
    
    var body: some View{
        
       
            // Lockscreen...
            
            if unLocked{
                
                Text("App Unlocked")
                    .font(.title2)
                    .fontWeight(.heavy)
            }
            else{
                
                LockScreen(unLocked: $unLocked)
            }
        }
        
       
    
}

struct LockScreen : View {
    
    @State var password = ""
   
    @AppStorage("lock_Password") var key = "1111"
    @Binding var unLocked : Bool
    @State var wrongPassword = false
    let height = UIScreen.main.bounds.width
    
    var body: some View{
        ZStack{
            Image("SC")
                .resizable()
                .frame(width: 400, height: 790)
                .padding(.bottom, -250)
        
        VStack{
            
            HStack{
                
                Spacer(minLength: 0)
                
                Menu(content: {
                    
                    Label(
                        title: { Text("Help") },
                        icon: { Image(systemName: "info.circle.fill") })
                        .onTapGesture(perform: {
                           
                        })
                    
                    Label(
                        title: { Text("Reset Password") },
                        icon: { Image(systemName: "key.fill") })
                        .onTapGesture(perform: {
                            
                        })
                    
                }) {
                    
                    Image("menu")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 19, height: 19)
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .padding(.leading)
            
            Image("logo")
                .resizable()
                .frame(width: 95, height: 95)
                .padding(.top,20)
            
            Text("Установите пин-код")
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.heavy)
                .padding(.top,20)
            
            HStack(spacing: 27){
                
                // Password Circle View...
                
                ForEach(0..<4,id: \.self){index in
                    
                    PasswordView(index: index, password: $password)
                }
            }
            // for smaller size iphones...
            .padding(.top,height < 750 ? 20 : 30)
            
       
            
            Spacer(minLength: 0)
            
            Text(wrongPassword ? "Incorrect Pin" : "")
                .foregroundColor(.red)
                .fontWeight(.heavy)
            
            Spacer(minLength: 0)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3),spacing: height < 750 ? 5 : 15){
                
                // Password Button ....
                
                ForEach(1...9,id: \.self){value in
                    
                    PasswordButton(value: "\(value)",password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
                }
                
                PasswordButton(value: "delete.fill",password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
                
                PasswordButton(value: "0", password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword)
            }
            .padding(.bottom)

        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}}





struct PasswordView : View {
    
    var index : Int
    @Binding var password : String
    
    var body: some View{
        
        ZStack{
            
            Circle()
                .stroke(Color.white,lineWidth: 2)
                .frame(width: 30, height: 30)
            
            // checking whether it is typed...
            
            if password.count > index
            {
                     Circle()
                    .fill(Color.white)
                    .frame(width: 30, height: 30)
            }
        }
    }
}

struct PasswordButton : View {
    
    var value : String
    @Binding var password : String
    @Binding var key : String
    @Binding var unlocked : Bool
    @Binding var wrongPass : Bool
    
    var body: some View{
        
        Button(action: setPassword, label: {
            
            VStack{
                
                if value.count > 1{
                    
                    // Image...
                    
                    Image(systemName: "delete.left")
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .padding(.leading, 540)
                }
                else{
                    
                    Text(value)
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding()

        })
    }
    
    func setPassword(){
        
        // checking if backspace pressed...
        
        withAnimation{
            
            if value.count > 1{
                
                if password.count != 0{
                    
                    password.removeLast()
                }
            }
            else{
                
                if password.count != 4{
                    
                    password.append(value)
                    
                    // Delay Animation...
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        
                        withAnimation{
                            
                            if password.count == 4{
                                
                                if password == key{
                                    
                                    unlocked = true
                                }
                                else{
                                    
                                    wrongPass = true
                                    password.removeAll()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
