import SwiftUI

struct PhoneNumber: View {
    @State private var phoneNumberInput = ""
    @State private var shouldShowRegistrationPage = false
    @State private var shouldShowNextButton = false
    @State private var registeredUsers = ["97-705-24-18", "97-755-21-58"]
    @State private var passwordUsers = ["qq2980268","4567"]
    @State var isShowingNotification = false
    @State private var isLoading = false
    @State private var password = ""
    @State private var showPassword = false
    @State var isSecureField : Bool = true
    @State private var pphoneNumberInput: String = ""
    @State var showingBottomSheet = false
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    //@Environment(\.presentationMode2) private var presentationMode2: Binding<PresentationMode2>
    
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
                
                //function
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
                                      TextField("00-000-00-00", text: $phoneNumberInput)
                                          .keyboardType(.numberPad)
                                          .onChange(of: phoneNumberInput )
                                    { _ in
                                        if phoneNumberInput.count > 9 {
                                        phoneNumberInput = String(phoneNumberInput.prefix(9))
                                    }}
                                          .onChange(of: phoneNumberInput) { newValue in
                                          
                                              let numericString = newValue.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
                                              var formattedString = ""

                                              for (index, digit) in numericString.enumerated() {
                                                  switch index {
                                                  case 2, 5, 7:
                                                      formattedString += "-"
                                                      fallthrough
                                                  default:
                                                      formattedString.append(digit)
                                                  }
                                              }

                                              phoneNumberInput = formattedString
                                          }
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
                
                if registeredUsers.contains(phoneNumberInput){
               
    
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
                    VStack{
                        Button(action : {}){
                            NavigationLink (destination:  LanguageView())
                            {
                                HStack
                                {Spacer()
                                    Text("Забыли пароль?")
                                        .font(.custom("Rubik-Regular", size: 14))
                                        .foregroundColor(.white)
                                        .kerning(-0.3)
                                        .lineSpacing(19.8)
                                        .frame(width: 106, height: 18)
                                        .padding(.top, 90)
                                }.padding(.trailing, 30)
                            }
                        }
                    }.padding(.top, 30)
                    ZStack {
                        
                        if self.showPassword
                        {
                            TextField("  Password  ", text: $password  )
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
                            
                            Trust()
                            
                        }
                        else{
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
                            Trust()
                        }
                        Button(action: {
                            self.showPassword.toggle()
                        }) {
                            Image(systemName: showPassword ? "eye.slash" : "eye")
                                .foregroundColor(.white)
                            
                        }
                        .padding(.leading, 290)
                        
                    }.padding(.top, 10)
                    
                    if  passwordUsers.contains(password){
                        Button(action:
                                {    showingBottomSheet.toggle()})
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
                        .sheet(isPresented: $showingBottomSheet)
                        {
                            VStack() {
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        showingBottomSheet.toggle()
                                    }, label: {
                                        Image("otmena")
                                    })
                                    .padding(.trailing, 320)
                                }
                                .padding(.top, 20)
                                
                                HStack{
                                    Text("Регистрация")
                                        .foregroundColor(Color(red: 0.2, green: 0.251, blue: 0.333, opacity: 1))
                                        .font(Font.custom("Rubik-Medium", size: 16))
                                        .kerning(-0.3)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 100, height: 21)
                                        .background(Color.white)
                                   
                                       
                                        
                                }.position(x:200, y: 1)
                               // Spacer()
                                
                                HStack
                                {
                                    Image("call")
                                        .frame(width: 64, height: 64)
                                                    .foregroundColor(.white)
                                                    .padding(.leading, 153)
                                                    .padding(.top, 126)
                                 
                                    
                                   
                                } .position(x:120, y: -180)
                                HStack
                                {
                                    Text("Подтвердите номер телефона")
                                                .font(.custom("Rubik-Medium", size: 18))
                                                .foregroundColor(Color(red: 0.2, green: 0.251, blue: 0.333))
                                                .kerning(-0.3)
                                                .multilineTextAlignment(.center)
                                                .frame(width: 335, height: 23)
                                                .background(Color.white)
                                }.position(x:200, y: -225)
                                HStack
                                {
                                   
                                    Image("confirm")
                                      
                                }  .position(x:200, y: -340)
                            }
                        }
                        
                    }
                    
                    //                    else
                    //                    {
                    //                        Text("Error")
                    //                    }
                    
                }
                else{
                    ZStack (alignment: .leading){
                        
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                            .frame(width: 350, height: 60)
                        // Add any content here, for example:
                        Text(" Так вы у нас впервые? \n Давайте начнем регистрацию")
                            .foregroundColor(.black)
                        
                        
                        Button(action: {})
                        {
                            NavigationLink(destination: RegistrationPage()){
                                HStack(){
                                    Text("Регистрация")
                                    
                                        .foregroundColor(.white)
                                        .font(.custom("Rubik-Medium", size: 12))
                                        .frame(width: 95, height: 32)
                                        .background(Color(red: 0.106, green: 0.588, blue: 0.518))
                                        .foregroundColor(.white)
                                    .cornerRadius(6)}
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
    func formatInputValue(_ value: String) -> String {
        var formatted = value
        if formatted.count >= 2 {
            formatted.insert("-", at: formatted.index(formatted.startIndex, offsetBy: 2))
        }
        if formatted.count >= 6 {
            formatted.insert("-", at: formatted.index(formatted.startIndex, offsetBy: 6))
        }
        if formatted.count >= 9 {
            formatted.insert("-", at: formatted.index(formatted.startIndex, offsetBy: 9))
        }
        return formatted
    }
}




struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}
