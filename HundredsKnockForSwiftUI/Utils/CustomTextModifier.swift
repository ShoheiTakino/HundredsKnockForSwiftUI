//
//  CustomTextModifier.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct CustomTextModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 24, weight: .bold, design: .rounded))
            .foregroundColor(.red)
    }
}
