//
//  Knok46.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/01.
//

import SwiftUI

struct Knok46: View {
    @State var text: String = ""
    @State var onChanching = ""
    @FocusState var focus:Bool
    var body: some View {
        VStack {
            Text(onChanching)
            TextField("今日", text: $text, onEditingChanged: { editing in
                onChanching = editing ? "編集中" : "編集終了"
            })
            .frame(width: 200, height: 30)
        }
    }
}

// 模範解答

//struct Knok46 : View {
//    @State var userName: String = ""
//    @State var onEditing: Bool = false
//    var body: some View {
//        VStack {
//            Text(onEditing ? "On Editing" : "Not On Editing")
//
//            TextField("Placeholder", text: $userName, onEditingChanged: { onEditing in
//                print("onEditingChanged: \(onEditing)")
//                self.onEditing = onEditing
//            }, onCommit: {
//                print("onCommit")
//            })
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
//        }
//    }
//}

struct Knok46_Previews: PreviewProvider {
    static var previews: some View {
        Knok46()
    }
}
