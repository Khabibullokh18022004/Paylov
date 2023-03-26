import SwiftUI

struct LanguageView: View {
    
    @State private var languages = ["O´zbekcha", "Qaraqalpaqsha", "Русский", "English"]
    @State private var selectedLanguageIndex = 0
    @State private var selectedLanguage: String?
    @State private var drawAmount: CGFloat = 0.0
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("bImage")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    Spacer(minLength: 250)
                    Image("paylovLogo")
                    Spacer()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: -10) {
                            Spacer(minLength: 100)
                            ForEach(languages.indices) { index in
                                GeometryReader { geo in
                                    let centerX = UIScreen.main.bounds.width / 2
                                    let opacity = (geo.frame(in: .global).minX < centerX && geo.frame(in: .global).maxX > centerX) ? 1 : 0.6
                                    Text(languages[index])
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .opacity(opacity)
                                        .padding()
                                        .frame(width: 200, height: 200)
                                    
                                }
                                .frame(width: 200, height: 200)
                                .onTapGesture {
                                    selectedLanguageIndex = index
                                    selectedLanguage = languages[index]
                                }
                            }
                            
                            Spacer(minLength: 100)
                        }
                    } // scroll View
                    .background(
                        Capsule()
                            .stroke(Color.white, lineWidth: 3)
                            .frame(width: 170, height: 50)
                    )
                    .animation(.easeInOut)
                    
                    
                    ZStack {
                        
                        Ellipse()
                            .stroke(Color("ellipseColor"), lineWidth: 6)
                            .frame(width: 94, height: 94)
                        Button(action: {
                            // Do something with the selected language
                            let impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
                            impactFeedbackGenerator.prepare()
                            impactFeedbackGenerator.impactOccurred()
                            
                        })
                        {
                            NavigationLink(destination: RegistrationPage()){
                                ZStack {
                                  
                                        
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 62)
                                        
                                        Ellipse()
                                            .trim(from: 0, to: drawAmount)
                                            .stroke(Color.white, lineWidth: 6)
                                            .frame(width: 94, height: 94)
                                            .animation(Animation.linear(duration: 3))
                                            .onAppear {
                                                self.drawAmount = 1
                                            }
                                        
                                        Image("arrowRIght")
                                            .frame(width: 37, height: 37)
                                        
                                    }
                                }
                                
                            }
                        }
                        
                    }
                }
                
            }
        }
        
    }
    

      

        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
    
            LanguageView()

    }
}
