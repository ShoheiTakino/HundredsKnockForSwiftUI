//
//  Knok55.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/02.
//

import SwiftUI
private enum pokemon {
    case aaa
    case bbb
    
    var title: String {
        switch self {
        case .aaa: return "どすこい"
        case .bbb: return "パンが好き"
        }
    }
}

struct Knok55: View {
    @State private var showingModal = false
    @State private var showingModal2 = false
    var body: some View {
        VStack {
            Button {
                self.showingModal.toggle()
            } label: {
                Text(pokemon.aaa.title)
            }
            .sheet(isPresented: $showingModal) {
                NextView(text: pokemon.aaa.title)
            }
            Button {
                self.showingModal2.toggle()
            } label: {
                Text(pokemon.bbb.title)
            }
            .sheet(isPresented: $showingModal2) {
                NextView(text: pokemon.bbb.title)
            }
        }
    }
}

private struct NextView: View {
    private let text: String
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
    }
}

// 模範解答
//
//struct Knok55: View {
//    @State var sheetItem: SheetItem?
//    var body: some View {
//        VStack {
//            Button(action: {
//                sheetItem = .snorlax
//            }) {
//                Text("Show Snorlax")
//            }
//
//            Button(action: {
//                sheetItem = .slowpoke
//            }) {
//                Text("Show Slowpoke")
//            }
//        }
//        .sheet(item: $sheetItem) { item in
//            switch item {
//            case .snorlax:
//                SnorlaxView()
//            case .slowpoke:
//                SlowpokeView()
//            }
//        }
//    }
//}
//
//enum SheetItem: Identifiable {
//    case snorlax
//    case slowpoke
//    var id: Int {
//        hashValue
//    }
//}
//
//struct SnorlaxView: View {
//    var body: some View {
//        Image("penguin")
//            .resizable()
//            .frame(width: 150, height: 150)
//            .scaledToFit()
//    }
//}
//
//struct SlowpokeView: View {
//    var body: some View {
//        Text("ペンギン")
//    }
//}

struct Knok55_Previews: PreviewProvider {
    static var previews: some View {
        Knok55()
    }
}
