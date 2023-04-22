//
//  Knok5.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/22.
//

import SwiftUI

struct Knok5: View {
    var body: some View {
        HStack {
            Spacer()
            ImageForKnok5()
            Spacer()
            ImageForKnok5()
            Spacer()
            ImageForKnok5()
            Spacer()
            ImageForKnok5()
            Spacer()
        }
    }
}

private struct ImageForKnok5: View {
    var body: some View {
        Image("penguin")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .frame(width: 100, height: 100)
    }
}

// 模範解答
//
//struct Knok5: View {
//    var body: some View {
//        HStack {
//            Image("penguin")
//                .resizable()
//                .frame(width: 42, height: 42)
//            Spacer()
//            Image("penguin")
//                .resizable()
//                .frame(width: 42, height: 42)
//            Spacer()
//            Image("penguin")
//                .resizable()
//                .frame(width: 42, height: 42)
//            Spacer()
//            Image("penguin")
//                .resizable()
//                .frame(width: 42, height: 42)
//            Spacer()
//            Image("penguin")
//                .resizable()
//                .frame(width: 42, height: 42)
//        }
//        .padding(16)
//    }
//}

struct Knok5_Previews: PreviewProvider {
    static var previews: some View {
        Knok5()
    }
}
