//
//  SwiftUIView.swift
//  BottomSheet
//
//  Created by Habibulloh on 14/04/23.
//

import SwiftUI

struct SwiftUIView: View {
    static let codeDigits = 6
    @State
    var codeDict = Dictionary<Int, String>(uniqueKeysWithValues: (0..<codeDigits).map{ ($0, "") })
    // [0:"", 1:"", ..., 5:""]
    
    var code: String {
        codeDict.sorted(by: { $0.key < $1.key }).map(\.value).joined()
    }
    var body: some View {
        VStack(spacing: 220) {

           
            OneTimeCodeBoxes(codeDict: $codeDict,
                             onCommit: {
                                print("onCommit", code)
                             })
                .onChange(of: codeDict, perform: { _ in })
                .padding()
                .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.green, lineWidth: 1)
                    )
                    .padding(.top, 27)
          
            
            Spacer()
        }
        .padding(.vertical)
    }
    
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

