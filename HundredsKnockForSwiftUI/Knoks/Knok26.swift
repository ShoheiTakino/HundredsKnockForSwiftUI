//
//  Knok26.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok26: View {
    @State private var list = ["saunas","fujimi","kairyo","nobeha"]
    @State private var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(0 ..< list.count, id: \.self) { index in
                        Button(list[index]) {
                            self.isPresented = true
                        }
                        .alert("アラート表示", isPresented: $isPresented) {
                            
                        } message: {
                            Text(list[index])
                        }
                    }
                }
            }
        }
    }
}

// 模範解答
//
//fileprivate struct Pokemon: Identifiable {
//    let id = UUID()
//    let name: String
//}
//
//
//struct Knok26: View {
//    @State private var pokemons: [Pokemon] = [
//        Pokemon(name: "カビゴン"),
//        Pokemon(name: "ピカチュー"),
//        Pokemon(name: "コダック"),
//        Pokemon(name: "カメックス"),
//        Pokemon(name: "ヤドン")]
//    @State private var showingAlert = false
//
//    var body: some View {
//        List(pokemons) { pokemon in
//            Button(action: {
//                self.showingAlert = true
//            }, label: {
//                Text(pokemon.name)
//            }).alert(isPresented: self.$showingAlert) {
//                Alert(title: Text("ポケモン名"), message: Text(pokemon.name), dismissButton: .default(Text("閉じる")))
//            }
//        }
//    }
//}

struct Knok26_Previews: PreviewProvider {
    static var previews: some View {
        Knok26()
    }
}
