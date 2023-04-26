//
//  Knok32.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/26.
//

import SwiftUI

struct Knok32: View {
    var body: some View {
        NavigationView {
            Text("わけわかめ")
                .navigationTitle(Text("コンチには"))
                .navigationBarHidden(true)
        }
    }
}

// 模範解答

//struct Knok32: View {
//    var body: some View {
//        NavigationView {
//            Text("No Title")
//                .navigationBarTitle("")
//                .navigationBarHidden(true)
//        }
//    }
//}

struct Knok32_Previews: PreviewProvider {
    static var previews: some View {
        Knok32()
    }
}
