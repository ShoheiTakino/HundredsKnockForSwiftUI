//
//  Knok8.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok8: View {
    var body: some View {
        TabView{
            Knok1()
                .tabItem {
                    Image(systemName: "1.circle.fill")
                    Text("Fisrt")
                }
            Knok2()
                .tabItem {
                    Image(systemName: "2.circle.fill")
                    Text("Second")
                }
            Knok3()
                .tabItem {
                    Image(systemName: "3.circle.fill")
                    Text("Third")
                }
        }
    }
}

// 模範解答

//struct Knok8: View {
//    var body: some View {
//        TabView {
//            Text("The First Tab")
//                .tabItem {
//                    Image(systemName: "1.square.fill")
//                    Text("First")
//            }
//            Text("Another Tab")
//                .tabItem {
//                    Image(systemName: "2.square.fill")
//                    Text("Second")
//            }
//            Text("The Last Tab")
//                .tabItem {
//                    Image(systemName: "3.square.fill")
//                    Text("Third")
//            }
//        }
//        .font(.headline)
//    }
//}

struct Knok8_Previews: PreviewProvider {
    static var previews: some View {
        Knok8()
    }
}
