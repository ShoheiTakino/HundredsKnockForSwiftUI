//
//  Knok35.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/26.
//

import SwiftUI

struct Knok35: View {
    let columns = 3
    var body: some View {
        GeometryReader { geometry in
            let cellWidth = geometry.size.width / CGFloat(columns)
            ScrollView() {
                LazyVGrid(
                    columns: Array<GridItem>(
                        repeating: .init(.flexible(minimum: 1, maximum: cellWidth)), count: columns)) {
                            ForEach((0..<20)) { index in
                                Text("\(index)")
                                    .frame(width: cellWidth, height: cellWidth)
                            }
                        }
            }
        }
    }
}

// 模範解答

// サードパーティ製のライブラリを使用する模範解答のため載せない

struct Knok35_Previews: PreviewProvider {
    static var previews: some View {
        Knok35()
    }
}
