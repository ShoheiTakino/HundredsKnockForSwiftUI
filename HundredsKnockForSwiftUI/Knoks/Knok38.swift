//
//  Knok38.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/26.
//

import SwiftUI

struct Knok38: View {
    @State private var isTapped = false
    var body: some View {
        Button {
            self.isTapped = true
        } label: {
            Text("タップ")
        }
        .sheet(isPresented: $isTapped) {
            Text("閉じれないよ")
                .interactiveDismissDisabled()
        }
    }
}

// 模範解答
// https://swiswiswift.com/2020-06-01/

struct Knok38_Previews: PreviewProvider {
    static var previews: some View {
        Knok38()
    }
}
