//
//  Knok10.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok10: View {
    var body: some View {
        List {
            Section {
                Text("Apple")
                Text("SwiftUI")
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

struct Knok10_Previews: PreviewProvider {
    static var previews: some View {
        Knok10()
    }
}
