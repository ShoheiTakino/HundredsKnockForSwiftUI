//
//  Knok13.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok13: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        DetaileView(text: "Apple")
                            .navigationBarBackButtonHidden()
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
       .listStyle(PlainListStyle())
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

// 模範解答なし

struct Knok13_Previews: PreviewProvider {
    static var previews: some View {
        Knok13()
    }
}
