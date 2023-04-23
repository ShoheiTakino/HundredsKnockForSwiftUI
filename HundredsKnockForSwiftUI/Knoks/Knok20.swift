//
//  Knok20.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok20: View {
    @State private var isActive = false
    var body: some View {
        NavigationStack {
            Button("遷移してぇ〜") {
                self.isActive = true
            }
            NavigationLink(destination: Text("遷移したお"), isActive: $isActive) {
                EmptyView()
            }
        }
    }
}

// 模範解答

//struct Knok20: View {
//    @State var isActive = false
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                Button(action: {
//                    self.isActive = true
//                }) {
//                    Text("Tap Me!!")
//                }
//
//                NavigationLink(destination: Text("SecondView"), isActive: $isActive) {
//                    EmptyView()
//                }
//            }
//        }
//    }
//}

struct Knok20_Previews: PreviewProvider {
    static var previews: some View {
        Knok20()
    }
}
