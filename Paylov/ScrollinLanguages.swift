//
//  ScrollinLanguages.swift
//  Paylov
//
//  Created by Habibulloh on 17/03/23.
//

import SwiftUI

import SwiftUI

struct ScrollinLanguages: View {
    let languages = ["English", "O'zbekcha", "Русский", "Arabic", "Tajik"]
    @State private var selectedLanguage = ""
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(languages, id: \.self) { language in
                    GeometryReader { geometry in
                        Button(action: {
                            self.selectedLanguage = language
                        })
                        {
                            Text(language)
                                .font(.title)
                                .frame(width: geometry.size.width, height: 200)
                                .background(Color.white)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 20)
//                                        .stroke(selectedLanguage == language ? Color.white : Color.clear, lineWidth: 5)
//                                )
                                .padding(20)
                        }
                        .frame(width: 500, height: 300)
                        .cornerRadius(10)
                       // .shadow(radius: 5)
                    }
                }
            }
        }
        .onAppear {
            self.selectedLanguage = self.languages.first ?? ""
        }
    }
}


struct ScrollinLanguages_Previews: PreviewProvider {
    static var previews: some View {
        ScrollinLanguages()
    }
}
