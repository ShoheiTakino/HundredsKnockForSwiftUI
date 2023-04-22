//
//  Knok4.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/22.
//

import SwiftUI

struct Knok4: View {
    var body: some View {
        Image("penguin")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(
                RoundedRectangle(cornerRadius: 150)
                    .stroke(Color.black, lineWidth: 1)
            )
    }
}

// 模範解答

//struct Knok4: View {
//    var body: some View {
//        Image("penguin")
//            .resizable()
//            .scaledToFill()
//            .frame(width: 150, height: 150)
//            .cornerRadius(75)
//            .overlay(
//                RoundedRectangle(cornerRadius: 75).stroke(Color.black, lineWidth: 4)
//        )
//    }
//}

struct Knok4_Previews: PreviewProvider {
    static var previews: some View {
        Knok4()
    }
}
