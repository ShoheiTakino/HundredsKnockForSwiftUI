//
//  Knok11.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok11: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        DetaileView(text: "Apple")
                    } label: {
                        Text("Apple")
                    }
                    NavigationLink {
                        DetaileView(text: "SwiftUI")
                    } label: {
                        Text("SwiftUI")
                    }
                } header: {
                    Text("デフォルト表示")
                }

                Section {
                    Text("Apple")
                        .listRowSeparator(.hidden)
                    Text("SwiftUI")
                } header: {
                    Text("セパレータ無し")
                }
                .listSectionSeparator(.hidden)
            }
        }
    }
}

private struct DetaileView: View {
    @State private var text: String

    init(text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
    }
}

// 模範解答

//struct Knok11: View {
//    let fruits = ["Apple", "Banana", "Orange", "Grape", "Cherry", "Peach"]
//
//    var body: some View {
//        NavigationView {
//            List(fruits, id: \.self) { fruit in
//                NavigationLink(destination: SecondView(fruit: fruit)) {
//                    Text(fruit)
//                }
//            }
//        }
//    }
//}
//
//struct SecondView: View {
//    let fruit: String
//
//    var body: some View {
//        Text(fruit)
//    }
//}


struct Knok11_Previews: PreviewProvider {
    static var previews: some View {
        Knok11()
    }
}
