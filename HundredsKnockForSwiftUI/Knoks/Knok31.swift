//
//  Knok31.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/26.
//

import SwiftUI

struct Knok31: View {
    @State private var isTapped = false
    var body: some View {
        Button {
            self.isTapped = true
        } label: {
            Text("タップ！")
        }
        .fullScreenCover(isPresented: $isTapped, content: {
            Text("フルスクリーンだっちゃ")
        })
    }
}

// 模範解答なし

struct Knok31_Previews: PreviewProvider {
    static var previews: some View {
        Knok31()
    }
}
