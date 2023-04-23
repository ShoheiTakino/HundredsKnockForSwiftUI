//
//  Knok23.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok23: View {
    var body: some View {
        VStack(alignment: .leading) {
            ViewBuilder.buildBlock(
                Text("二郎系")
            )
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .yellow, radius: 10, x: 4, y: 4)
            .padding(10 + 8)
            ViewBuilder.buildBlock(
                Text("鶏白湯")
            )
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .yellow, radius: 10, x: 4, y: 4)
            .padding(10 + 8)
            ViewBuilder.buildBlock(
                Image("penguin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
            )
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .yellow, radius: 10, x: 4, y: 4)
            .padding(10 + 8)
            ViewBuilder.buildBlock(
                Text("とんこつ")
            )
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .yellow, radius: 10, x: 4, y: 4)
            .padding(10 + 8)
        }
    }
}

// 模範解答

//struct CardView<Content>: View where Content: View {
//    let color: Color
//    let radius: CGFloat
//    let content: () -> Content
//
//    init(
//        color: Color = Color.gray.opacity(0.4),
//        radius: CGFloat = 8,
//        @ViewBuilder content: @escaping () -> Content) {
//        self.content = content
//        self.color = color
//        self.radius = radius
//    }
//
//    var body: some View {
//        content()
//        .padding(16)
//        .background(Color.white)
//        .cornerRadius(16)
//        .shadow(color: color, radius: radius, x: 4, y: 4)
//        .padding(radius + 8)
//    }
//}
//
//struct Knok23: View {
//    var body: some View {
//        VStack {
//            CardView {
//                Text("Snorlax")
//            }
//
//            CardView {
//                Image("penguin")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 60, height: 60)
//            }
//
//            CardView(color: Color.red.opacity(0.4)) {
//                Text("RedShadow")
//            }
//
//            CardView(
//                color: Color.green.opacity(0.4),
//                radius: 24) {
//                    Text("BigShadow")
//            }
//        }
//    }
//}

struct Knok23_Previews: PreviewProvider {
    static var previews: some View {
        Knok23()
    }
}
