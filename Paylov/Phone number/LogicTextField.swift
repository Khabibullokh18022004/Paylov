//
//  LogicTextField.swift
//  Paylov
//
//  Created by Habibulloh on 12/04/23.
//
import SwiftUI
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


struct LogicTextField: View {
    @State private var inputValue: String = ""

    var body: some View {
        TextField("Enter a 9 digit number", text: $inputValue)
            .keyboardType(.numberPad)
            .onChange(of: inputValue) { newValue in
                let filtered = newValue.filter { "0123456789".contains($0) }
                if filtered != newValue {
                    self.inputValue = filtered
                }
                if inputValue.count > 9 {
                    self.inputValue = String(inputValue.prefix(9))
                }
                let formatted = formatInputValue(inputValue)
                if formatted != newValue {
                    self.inputValue = formatted
                }
            }
    }


}


struct LogicTextField_Previews: PreviewProvider {
    static var previews: some View {
        LogicTextField()
    }
}
