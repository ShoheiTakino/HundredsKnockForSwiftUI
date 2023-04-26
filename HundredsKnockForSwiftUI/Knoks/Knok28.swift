//
//  Knok28.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok28: View {

    private let list = ["a","b","c","d","e"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(0 ..< list.count) { index in
                    NavigationLink(destination: DetaileView(title: list[index])) {
                        Text(list[index])
                    }
                }
            }
        }
    }
}

private struct DetaileView: View {
    private let title: String

    init(title: String) {
        self.title = title
    }

    var body: some View {
        Text(title)
    }
}

// 模範解答

//struct Knok28: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                Divider()
//                List (samples) { sample in
//                    self.containedView(sample: sample)
//                }
//                    .edgesIgnoringSafeArea([.bottom])
//            }
//        }
//    }
//
//    func containedView(sample: Sample) -> AnyView {
//        switch sample.view {
//        case .view_20191030: return AnyView(NavigationLink (destination: List_20191030()) {
//                    Text(sample.title)
//                })
//        case .view_20191111: return AnyView(NavigationLink (destination: Tutorial_20191111()) {
//                    Text(sample.title)
//                })
//        case .view_20191114: return AnyView(NavigationLink (destination: ContentView_20191114()) {
//                    Text(sample.title)
//                })
//        case .view_20191120: return AnyView(NavigationLink (destination: ContentView_20191120()) {
//                    Text(sample.title)
//                })
//        }
//    }
//}
//
//struct Sample: Identifiable {
//    var id: Int
//    var title: String
//    var view: ViewEnum
//}
//
//enum ViewEnum {
//    case view_20191120
//    case view_20191114
//    case view_20191111
//    case view_20191030
//}
//
//let samples: [Sample] = [
//    Sample(id: 20191120, title: "TabView", view: .view_20191120),
//    Sample(id: 20191114, title: "Make Unique Value", view: .view_20191114),
//    Sample(id: 20191111, title: "Tutorial (Creating and Combining Views)", view: .view_20191111),
//    Sample(id: 20191030, title: "List (SwiftUI)", view: .view_20191030)
//]


struct Knok28_Previews: PreviewProvider {
    static var previews: some View {
        Knok28()
    }
}
