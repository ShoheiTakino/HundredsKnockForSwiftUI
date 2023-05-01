//
//  Knok48.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/01.
//

import SwiftUI

struct Knok48: View {
    @AppStorage("aisatsu") var username: String = "こんにちは"

    var body: some View {
        VStack {
            Text(username)
            Button("こんちは〜") {
                username = "こんちは〜"
            }
            Button("こんばんは〜") {
                UserDefaults.standard.set("こんばんは〜", forKey: "aisatsu")
            }
        }
        .padding()
    }
}

// 模範解答

//struct Knok48: View {
//    @AppStorage("FAVORITE_POKEMON_NAME") var favoritePokemonName: String = ""
//
//    var body: some View {
//        VStack(spacing: 16) {
//            Text("Your favorite pokemon is, \(favoritePokemonName)")
//
//            Button("Snorlax is my mavorite pokemon.") {
//                favoritePokemonName = "Snorlax"
//            }
//
//            Button("Snorlax is my mavorite pokemon.") {
//                UserDefaults.standard.set("Slowpoke", forKey: "FAVORITE_POKEMON_NAME")
//            }
//        }
//    }
//}

struct Knok48_Previews: PreviewProvider {
    static var previews: some View {
        Knok48()
    }
}
