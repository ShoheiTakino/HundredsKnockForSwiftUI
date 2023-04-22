//
//  Knok2.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/22.
//

import SwiftUI

struct Knok2: View {
    var body: some View {
        Image("penguin")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaledToFill() // ？
            .frame(width: 150, height: 200)
            .clipped()
            .background(Color.red)
    }
}

struct Knok2_Previews: PreviewProvider {
    static var previews: some View {
        Knok2()
    }
}
