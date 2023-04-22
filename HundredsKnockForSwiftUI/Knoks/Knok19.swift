//
//  Knok19.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok19: View {
    @State private var text = ""
    @State private var isTapped = false
    @State private var isTappedForSheet = false
    var body: some View {
        VStack {
            TextField("入力せぇ", text: $text)
                .frame(height: 100)
            Button("タップせぇ") {
                if isValidateNum(text: text) {
                    self.isTappedForSheet = true
                    return
                }
                self.isTapped = true
            }
            .alert(isPresented: $isTapped) {
                showAlert()
            }
           .sheet(isPresented: $isTappedForSheet) {
               Text("コンバートするかー")
           }
        }
    }

    private func isValidateNum(text: String) -> Bool {
        var isNum = false
        if Int(text) != nil {
            isNum = true
        }
        return isNum
    }

    private func showAlert() -> Alert {
        return Alert(title: Text("Please Input Number"))
    }
}

// 模範解答

//struct Knok19: View {
//    @State var numberString: String = ""
//    @State var showingAlert: Bool = false
//    @State var showingSheet: Bool = false
//
//    var body: some View {
//        VStack {
//            TextField("Input Number", text: $numberString)
//                .padding()
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//            Button(action: {
//                // Can numberString convert to Double?
//                guard Double(self.numberString) != nil else {
//                    self.showingAlert = true
//                    return
//                }
//                self.showingSheet = true
//            }) {
//                Text("Show Sheet")
//            }
//        }
//        .alert(isPresented: $showingAlert) {
//            Alert(title: Text("Error"), message: Text("Please Input Number"), dismissButton: .default(Text("Close")))
//        }
//        .sheet(isPresented: $showingSheet) {
//            Text("\(self.numberString) can convert to Double")
//        }
//    }
//}

struct Knok19_Previews: PreviewProvider {
    static var previews: some View {
        Knok19()
    }
}
