//
//  Knok47.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/01.
//

import SwiftUI

//struct Knok47: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

// 模範解答（46と全く同じ問題）

struct Knok47 : View {
    @State var userName: String = ""
    @State var onEditing: Bool = false
    var body: some View {
        VStack {
            Text(onEditing ? "On Editing" : "Not On Editing")
            
            TextField("Placeholder", text: $userName, onEditingChanged: { onEditing in
                print("onEditingChanged: \(onEditing)")
                self.onEditing = onEditing
            }, onCommit: {
                print("onCommit")
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
}


struct Knok47_Previews: PreviewProvider {
    static var previews: some View {
        Knok47()
    }
}
