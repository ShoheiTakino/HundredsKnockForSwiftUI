//
//  Knok49.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/01.
//

import SwiftUI

struct Knok49: View {
    var body: some View {
        Image("penguin")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaledToFill() // ？
            .frame(width: 150, height: 150)
            .clipped()
            .background(Color.red)
            .overlay(alignment: .center) {
                Rectangle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.purple)
                    .opacity(0.6)
            }
    }
}

// 模範解答

//struct Knok49: View {
//    var body: some View {
//        Image("penguin")
//            .resizable()
//            .frame(width: 200, height: 200)
//            .overlay(
//                Text("Snorlax")
//                    .foregroundColor(Color.white)
//                    .font(Font.system(size: 20).bold())
//                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//                    .background(Color.black)
//                    .opacity(0.5)
//            )
//    }
//}


struct Knok49_Previews: PreviewProvider {
    static var previews: some View {
        Knok49()
    }
}
