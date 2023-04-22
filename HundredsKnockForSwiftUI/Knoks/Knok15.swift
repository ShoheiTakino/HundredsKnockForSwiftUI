//
//  Knok15.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

/// iOS15以降
struct Knok15: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("アラート表示") {
            self.showingAlert = true
        }
        .alert("タイトル", isPresented: $showingAlert) {
            Button("ボタン1"){
            }
            Button("ボタン2"){
            }
//            Button("ボタン1", role: .destructive){
//            }
        } message: {
            Text("詳細メッセージ")
        }
    }
}

// 模範解答なし

struct Knok15_Previews: PreviewProvider {
    static var previews: some View {
        Knok15()
    }
}
