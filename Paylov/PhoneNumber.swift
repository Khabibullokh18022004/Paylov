import SwiftUI

struct PhoneNumber: View {
    @State private var phoneNumber = ""
    @State private var shouldShowRegistrationPage = false
    @State private var shouldShowNextButton = false
    @State private var registeredUsers = ["977052418", "977552158"]
    @State private var isLoading = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // background image
                Image("bImage")
                    .resizable()
                    .ignoresSafeArea()
                // my logo
                VStack {
                    
                    Text("Вход")
                        .foregroundColor(.white)
                    
                        .bold(true)
                    VStack{
                        Image("paylovLogo")
                        Text("Благие поступки в каждом платеже")
                            .foregroundColor(Color.white)
                        
                    }}.position(x: 200, y: 80)
                
                
                VStack{
                    
                    Text("Номер телефона")
                        .bold()
                        .foregroundColor(Color.white)
                    //Texfield
                    HStack{
                        ZStack {
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
                                
                                TextField("00-000-00-00", text: $phoneNumber)
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                                if isLoading {
                                    Image(systemName: "arrow.clockwise.circle.fill")
                                        .foregroundColor(.blue)
                                        .rotationEffect(.degrees(360))
                                        .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                                        .padding(.trailing, 8)
                                }
                               
                            }
//                            .onTapGesture {
//                                isLoading = true
//                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                                    isLoading = false
//                                }
//                            }
                            .padding(.horizontal)
                        }
                        .frame(width: 345, height: 44)
                        .padding(.top, 26)
                    }.padding(.trailing)
                }.position(x: 215, y: 280)
                if registeredUsers.contains(phoneNumber){
                    NavigationLink(destination: RegistrationPage()){
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
                        }
                    }
                }
                else {
                    
                    ZStack (alignment: .leading){
                        
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                            .frame(width: 350, height: 60)
                        // Add any content here, for example:
                        Text(" Так вы у нас впервые? \n Давайте начнем регистрацию")
                            .foregroundColor(.black)
                        HStack(){
                            
                            Button(action: {
                                //to do
                            })
                            {
                                Text("Регистрация")
                                
                                    .foregroundColor(.white)
                                    .font(.custom("Rubik-Medium", size: 12))
                                    .frame(width: 95, height: 32)
                                    .background(Color(red: 0.106, green: 0.588, blue: 0.518))
                                    .foregroundColor(.white)
                                    .cornerRadius(6)
                                
                            }
                            
                        }.position(x:300, y: 30)
                    }
                    .padding()
                    .frame(width: 335, height: 60)
                    .offset(y: -26)
                }
            }
            
            
        }
        
    }
}





struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}
