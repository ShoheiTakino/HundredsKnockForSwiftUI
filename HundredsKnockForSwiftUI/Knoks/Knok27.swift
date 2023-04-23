//
//  Knok27.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

protocol Knok27Delegate {
    func tappedButtonAtSecondViewButton()
}

struct Knok27: View, Knok27Delegate {
    
    @State private var text = "遷移するよ"
    var body: some View {
        NavigationStack {
            VStack {
                Text(text)
                NavigationLink(destination: SecondView(delegate: self)) {
                    Text("遷移するよ")
                }
            }
        }
    }
    
    func tappedButtonAtSecondViewButton() {
        text = "タップされたっちゃけど~"
    }
}

struct SecondView: View {
    var delegate: Knok27Delegate
    
    init(delegate: Knok27Delegate) {
        self.delegate = delegate
    }
    
    var body: some View {
        Button {
            delegate.tappedButtonAtSecondViewButton()
        } label: {
            Text("タップせぇ")
        }
    }
}

// 模範解答
//
//struct Knok27: View, MyProtocol {
//    @State var text: String = "My Text"
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text(text)
//                NavigationLink(destination: SecondView(delegate: self)) {
//                    Text("2nd View")
//                }
//            }
//        }
//    }
//    
//    func myFunc() {
//        text = "Changed Text"
//    }
//}
//
//protocol MyProtocol {
//    func myFunc()
//}
//
//struct SecondView: View {
//    var delegate: MyProtocol
//    var body: some View {
//        Button(action: {
//            self.delegate.myFunc()
//        }) {
//            Text("ChangeText")
//        }
//    }
//}

struct Knok27_Previews: PreviewProvider {
    static var previews: some View {
        Knok27()
    }
}
