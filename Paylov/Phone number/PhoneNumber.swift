import SwiftUI

struct PhoneNumber: View {
    @State private var phoneNumber = ""
    @State private var shouldShowRegistrationPage = false
    @State private var shouldShowNextButton = false
    @State private var registeredUsers = ["97", "977552158"]
    @State var isShowingNotification = false
    @State private var isLoading = false
    @State private var password = " "
    @State private var showPassword = false
    @State var isSecureField : Bool = true
    
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            
            ZStack {
                // background image
                Image("bImage")
                    .resizable()
                    .ignoresSafeArea()
                // my logo
                    .navigationBarBackButtonHidden(true)
                    .toolbar(content:
                                {
                        ToolbarItem(placement: .navigationBarLeading)
                        {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            },
                                   label: {
                                Image("arrow-leftarrowLeft")
                                    .foregroundColor(.blue)
                                
                            })
                        }
                    }
                    )
                //Logo and short sentence
                VStack {
                    
                    Text("Вход")
                        .foregroundColor(.white)
                    
                    //   .bold(true)
                    VStack{
                        Image("paylovLogo")
                            .resizable()
                            .frame(width: 129, height:  41.61)
                        Text("Благие поступки в каждом платеже")
                            .foregroundColor(Color.white)
                        
                    }}.padding(.bottom, 690)
                
                
                VStack{
                    HStack{
                        Text("Номер телефона")
                            .font(.custom("Rubik-Medium", size: 14))
                            .foregroundColor(.white)
                            .kerning(-0.3)
                            .position(x:40, y:50)
                            .lineSpacing(1.1)
                            .frame(width: 335, height: 18, alignment: .leading)
                    }
                    //Texfield
                    VStack {
                        HStack
                        {
                            ZStack(alignment: .center) {
                                Color.white
                                    .opacity(0.12)
                                    .cornerRadius(8)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color.green, lineWidth: 1)
                                    )
                                HStack {
                                    Text("+998")
                                        .bold()
                                        .foregroundColor(Color.white)
                                    
                                    TextField("00-000-00-00", text: $phoneNumber, onEditingChanged: {_ in
                                        if isLoading{
                                            ProgressView()
                                                .progressViewStyle(CircularProgressViewStyle())
                                                .foregroundColor(.blue)
                                                .padding(.trailing, 8)
                                        }
                                    })
                                }.foregroundColor(Color.white)
                                    .padding(.horizontal)
                            }
                            .frame(width: 345, height: 44)
                            .padding(.top, 26)
                        }.padding(.trailing)
                        
                        if isShowingNotification {
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
                                        .padding(.trailing, 150)
                                }
                                
                                .padding(.all, 16)
                                .background(Color.clear)
                                
                                ZStack(alignment: .bottom)
                                { Spacer()
                                    Ellipse()
                                        .stroke(Color.white, lineWidth: 2)
                                    
                                        .frame(width: 32, height: 32)
                                    
                                        .opacity(1)
                                    HStack
                                    {
                                        
                                        Image("icon_krest")
                                            .animation(Animation.linear(duration: 3))
                                        // .padding( .leading, 280)
                                        
                                    }
                                    
                                }.padding(.leading, 280)
                                
                            }
                            .padding(.top, -320)
                            .padding(.leading, 1)
                            
                        }
                        
                    }
                    .padding(.all, 20)
                    
                }  .position(x: 203, y: 280)
                if registeredUsers.contains(phoneNumber){
                    NavigationLink(destination: RegistrationPage())
                    {
                        VStack{
                            Spacer()
                            
                            ZStack {
                                Circle()
                                    .stroke(Color.white, lineWidth: 4)
                                    .frame(width: 100)
                                
                                VStack {
                                    Image("arrowRIght")
                                        .foregroundColor(.white)
                                        .font(.system(size: 55))
                                }
                                
                            }
                        }.padding(.bottom, 30)
                        
                        
                    }
                    .disabled(true)
                    
                    VStack{
                        Text(" Пароль")
                            .font(.custom("Rubik-Medium", size: 14))
                            .foregroundColor(.white)
                            .kerning(-0.3)
                            .position(x:40, y:50)
                            .lineSpacing(1.1)
                            .frame(width: 335, height: 18, alignment: .leading)
                    }.padding(.top, -90)
                        .padding(.leading, -50)
                    
                    VStack {
//                        Button(action: {
//                            showPassword.toggle()
//                        }) {
//                            Image(systemName: showPassword ? "eye.slash" : "eye")
//                                .foregroundColor(.white)
//                        }
                        SecureField("  Password  ", text: $password)
                            .foregroundColor(.white)
                            .frame(width: 345, height: 44)
                            .background(Color.white.opacity(0.12))
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.green, lineWidth: 1)
                                    .frame(width: 345, height: 44)
                                
                            )
                        
                    }.padding(.leading, -8)
                    
               
                        
                }
                else{
                    ZStack (alignment: .leading){
                        
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                            .frame(width: 350, height: 60)
                        // Add any content here, for example:
                        Text(" Так вы у нас впервые? \n Давайте начнем регистрацию")
                            .foregroundColor(.black)
                        NavigationLink(destination: RegistrationPage()){
                            HStack(){
                                Button(action: {},
                                       
                                       label: { Text("Регистрация")
                                    
                                        .foregroundColor(.white)
                                        .font(.custom("Rubik-Medium", size: 12))
                                        .frame(width: 95, height: 32)
                                        .background(Color(red: 0.106, green: 0.588, blue: 0.518))
                                        .foregroundColor(.white)
                                    .cornerRadius(6)})
                            }.position(x:300, y: 30)
                        }
                    }
                    .padding(.bottom, 60)
                    .frame(width: 335, height: 60)
                    .offset(y:10)
                
            }
                
                
            }
            
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
}






struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}
