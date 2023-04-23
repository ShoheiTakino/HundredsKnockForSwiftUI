//
//  CustomShadowModifier.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct CustomShadowModifier: ViewModifier {
 
    /// 背景に黄色の影を表示するためのViewModifiler
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .yellow, radius: 10, x: 4, y: 4)
            .padding(10 + 8)
    }
}
