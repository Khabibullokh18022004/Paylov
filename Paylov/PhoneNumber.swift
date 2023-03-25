import SwiftUI

struct PhoneNumber: View {
    @State private var phoneNumber = ""
    @State private var shouldShowRegistrationPage = false
    
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
                    ZStack(){
                        Text("+998")
                        HStack{
                            
                            
                            TextField("      00-000-00-00", text: $phoneNumber)
                            
                                .background(Color.white.opacity(0.12))
                                .frame(width: 335, height: 44)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal)
                        }}
                    
                   
                }.position(x: 215, y: 300)
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
                .frame(width: 335, height: 60)
                .offset(y: 12)
                VStack{
                    Spacer()
                    ZStack {
                        Circle()
                            .stroke(Color.white, lineWidth: 4)
                            .frame(width: 100)
                        VStack {
                         
                                
                                
                                Image(systemName: "arrow.right.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 55))
                           
                        }
                    }
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
