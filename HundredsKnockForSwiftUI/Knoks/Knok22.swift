//
//  Knok22.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok22: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello")
                    .foregroundColor(.red)
                Text("World")
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                Text("Nice Morning")
                    .foregroundColor(.green)
            }
            HStack {
                Text("Hello")
                    .foregroundColor(.red)
                    .fontWeight(.black)
                Text("World")
                    .foregroundColor(.blue)
                Text("Nice Morning")
                    .foregroundColor(.green)
                    .fontWeight(.heavy)
            }
        }

    }
}

// 模範解答(Textの結合)

//struct Knok22: View {
//    var body: some View {
//        (Text("I ")
//            + Text("love ")
//                .foregroundColor(Color.red)
//            + Text("Snorlax")
//                .foregroundColor(.blue)
//                .font(Font.system(size: 20).bold())
//
//            + Text("!\n")
//            + Text("Snorlax is most cute & cool& powerful Pokemon.")
//                .foregroundColor(.yellow)
//            ).lineSpacing(4)
//    }
//}

struct Knok22_Previews: PreviewProvider {
    static var previews: some View {
        Knok22()
            .previewLayout(.sizeThatFits)
    }
}
