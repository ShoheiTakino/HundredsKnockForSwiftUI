//
//  Knok17.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok17: View {
    
    @State private var isFirstButton = false
    @State private var isSecondButton = false
    
    // Foreachでリファクタリングの余地がありそう
    var body: some View {
        VStack {
            Button("アラートだどん") {
                self.isFirstButton = true
            }
            .alert(isPresented: $isFirstButton) {
                showAlert(num: 1)
            }
            Button("アラートだどん") {
                self.isSecondButton = true
            }
            .alert(isPresented: $isSecondButton) {
                showAlert(num: 2)
            }
        }
    }
    
    private func showAlert(num: Int) -> Alert {
        return Alert(title: Text("alert\(num)"),
                     message: Text("message\(num)"),
                     dismissButton: .default(Text("戻る")))
    }
}

// 模範解答なし

struct Knok17_Previews: PreviewProvider {
    static var previews: some View {
        Knok17()
    }
}
