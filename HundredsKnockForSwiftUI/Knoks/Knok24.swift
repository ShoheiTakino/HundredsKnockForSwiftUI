//
//  Knok24.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok24: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("二郎系")
                .customShadowStyle()
            Text("鶏白湯")
                .customShadowStyle()
            Image("penguin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .customShadowStyle()
            Text("とんこつ")
                .customShadowStyle()
        }
    }
}

// 模範解答
//
//struct Knok24: View {
//    var body: some View {
//        VStack {
//            Text("Snorlax")
//                .card()
//
//            Image("penguin")
//                .resizable()
//                .frame(width: 60, height: 60)
//                .card()
//
//            Text("RedShadow")
//                .card(color: Color.red.opacity(0.4))
//
//            Text("BigShadow")
//                .card(
//                    color: Color.green.opacity(0.4),
//                    radius: 24)
//        }
//    }
//}
//
//private extension View {
//    func card(
//        color: Color = Color.gray.opacity(0.4),
//        radius: CGFloat = 8) -> some View {
//        self.modifier(CardViewModifier(color: color, radius: radius))
//    }
//}
//
//struct CardViewModifier: ViewModifier {
//    let color: Color
//    let radius: CGFloat
//    func body(content: Content) -> some View {
//        content
//            .padding(16)
//            .background(Color.white)
//            .cornerRadius(16)
//            .shadow(color: color, radius: radius, x: 4, y: 4)
//            .padding(radius + 8)
//    }
//}

struct Knok24_Previews: PreviewProvider {
    static var previews: some View {
        Knok24()
    }
}
