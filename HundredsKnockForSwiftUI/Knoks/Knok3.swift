//
//  Knok3.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/22.
//

import SwiftUI

struct Knok3: View {
    var body: some View {
        Image("penguin")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
    }
}

struct Knok3_Previews: PreviewProvider {
    static var previews: some View {
        Knok3()
    }
}
