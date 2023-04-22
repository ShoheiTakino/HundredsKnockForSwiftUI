//
//  Knok16.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok16: View {
    
    @State private var isFirstButton = false
    @State private var isSecondButton = false
    
    var body: some View {
        VStack {
            Button("ボタン1") {
                self.isFirstButton = true
            }
            .alert("ボタン1", isPresented: $isFirstButton) {
                
            } message: {
                Text("1")
            }
            Button("ボタン2") {
                self.isSecondButton = true
            }
            .alert("ボタン2", isPresented: $isSecondButton) {
                
            } message: {
                Text("2")
            }
        }
    }
}

struct Knok16_Previews: PreviewProvider {
    static var previews: some View {
        Knok16()
    }
}
