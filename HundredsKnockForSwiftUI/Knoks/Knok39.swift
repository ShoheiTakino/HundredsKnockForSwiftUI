//
//  Knok39.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/27.
//

import SwiftUI

struct Knok39: View {
    @State private var isTapped = false
    
    var body: some View {
        Button {
            self.isTapped = true
        } label: {
            Text("タップ")
        }
        .sheet(isPresented: $isTapped) {
            fullScreenView()
        }
    }
}
struct fullScreenView: View {
    @State private var isTapped = false

    var body: some View {
        Button {
            self.isTapped = true
        } label: {
            Text("タップ")
        }
        .fullScreenCover(isPresented: $isTapped, content: {
            Text("閉じれないよ")
        })
    }
}

// 模範解答(ViewController使用してるからあまり参考にしたくはない。)
// https://swiswiswift.com/2020-05-13/

struct Knok39_Previews: PreviewProvider {
    static var previews: some View {
        Knok39()
    }
}
