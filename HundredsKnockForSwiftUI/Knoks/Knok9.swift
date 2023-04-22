//
//  Knok9.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok9: View {
    
    @State private var list = ["ping","pinga","pinpin","pinger"]
    @State private var selectedItemNum = 0
    private let buttonText = "Button押してね"
    
    var body: some View {
        Text(list[selectedItemNum])
        Button(action: {
            if validate(num: selectedItemNum) { return }
            selectedItemNum += 1
        }){
            Text(buttonText)
               .font(.largeTitle)
        }
    }
    
    private func validate(num: Int) -> Bool {
        return num > 2
    }
}

// 模範解答
//
//struct Knok9: View {
//    @State var text = "Snorlax"
//
//    var body: some View {
//        VStack {
//            Text(text)
//            Button(action: {
//                self.text = "Forever"
//            }) {
//                Text("Tap Me!!")
//            }
//        }
//    }
//}


struct Knok9_Previews: PreviewProvider {
    static var previews: some View {
        Knok9()
    }
}
