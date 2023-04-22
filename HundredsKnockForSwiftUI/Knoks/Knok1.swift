//
//  Knok1.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/22.
//

import SwiftUI

struct Knok1: View {
    var body: some View {
        Image("penguin")
            .resizable()
            .aspectRatio(contentMode: .fit) //
            .frame(width: 150, height: 200)
            .background(Color.red)
    }
}

struct Knok1_Previews: PreviewProvider {
    static var previews: some View {
        Knok1()
    }
}
