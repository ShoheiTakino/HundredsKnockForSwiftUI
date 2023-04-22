//
//  Knok18.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok18: View {
    @State private var text = "Pengin"

    var body: some View {
        VStack {
            Text(text)
            Button(action: {
                self.text = "Pingaaaaaa"
            }) {
                HStack {
                    Image("penguin").renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("Tap Me!!!")
                }
            }
            .padding(10)
            .border(.black, width: 1)
        }
    }
}

// 模範解答

//struct Knok18: View {
//    @State var text = "Snorlax"
//
//    var body: some View {
//        VStack {
//            Text(text)
//            Button(action: {
//                self.text = "Forever"
//            }) {
//                HStack {
//                    Image("penguin")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 50, height: 50)
//                    Text("Tap Me!!")
//                }
//                .padding()
//                .border(Color.gray, width: 2)
//            }.buttonStyle(PlainButtonStyle())
//        }
//    }
//}

struct Knok18_Previews: PreviewProvider {
    static var previews: some View {
        Knok18()
    }
}
