//
//  Knok51.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/01.
//

import SwiftUI

struct Knok51: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .contextMenu {
                Button {
                    // Add this item to a list of favorites.
                } label: {
                    Label("Add to Favorites", systemImage: "heart")
                }
                Button {
                    // Open Maps and center it on this item.
                } label: {
                    Label("Show in Maps", systemImage: "mappin")
                }
            }
    }
}

// 模範解答
// https://swiswiswift.com/2020-11-07/

struct Knok51_Previews: PreviewProvider {
    static var previews: some View {
        Knok51()
    }
}
