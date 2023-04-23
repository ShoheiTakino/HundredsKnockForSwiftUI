//
//  View+.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

extension View {
    
    func customTextStyle() -> some View {
        self.modifier(CustomTextModifier())
    }
    
    /// 影をつけるためのcustomModefiler
    func customShadowStyle() -> some View {
        self.modifier(CustomShadowModifier())
    }
}
