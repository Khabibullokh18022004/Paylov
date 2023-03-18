//
//  ContentView.swift
//  Paylov
//
//  Created by Habibulloh on 15/03/23.
//

import SwiftUI

struct LanguageView: View {
    @State private var languages = [ "O'zbekcha", "Русский", "English", "Arabic", "Chinese", "Qaraqalpaqsha"]
    @State private var selectedColor = 0
    @State private var selectedLanguage: String?
    var body: some View {
        NavigationView{
            ZStack{
                Image("bImage")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("paylovLogo")
                        .position(x:200, y: 20)
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(languages, id: \.self) { language in
                                    Button(action: {
                                        selectedLanguage = language
                                        let impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
                                        impactFeedbackGenerator.prepare()
                                        impactFeedbackGenerator.impactOccurred()
                                    }) {
                                        Text(language)
                                            .padding()
                                            .background(selectedLanguage == language ? Color.green : Color.gray)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            .padding()
                        }
                    }
                    ZStack{
                        Circle()
                            .stroke(Color.white, lineWidth: 4)
                            .frame(width: 100)
                        Button(action: {
                            PhoneNumber()
                        })
                        {
                            NavigationLink(destination: PhoneNumber()) {
                                Image(systemName: "arrow.right.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 55))
                                    .scaledToFit()
                            }
                        }
                    }
                }
            }}
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
