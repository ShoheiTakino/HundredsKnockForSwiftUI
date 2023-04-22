//
//  Knok14.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

/// iOS14未満
struct Knok14: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("アラートだどん") {
            self.showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
            showAlert()
        }
    }
    
    private func showAlert() -> Alert {
        return Alert(title: Text("title"),
                     message: Text("message"),
                     primaryButton: .destructive(Text("左ボタン")),
                     secondaryButton: .default(Text("右ボタン")))
    }
}

// 模範解答

//struct Knok14: View {
//    @State var showingAlert = false
//    var body: some View {
//        Button(action: {
//            self.showingAlert = true
//        }, label: {
//            Text("Push Me!")
//        }).alert(isPresented: self.$showingAlert) {
//            Alert(
//                title: Text("タイトル"),
//                message: Text("メッセージ"),
//                primaryButton: .default(Text("ボタンその１")) {
//                    print("ボタンその１")
//                }, secondaryButton: .destructive(Text("ボタンその２")) {
//                    print("ボタンその２")
//                })
//        }
//    }
//}

struct Knok14_Previews: PreviewProvider {
    static var previews: some View {
        Knok14()
    }
}
