//
//  Knok7.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/22.
//

import SwiftUI

struct Knok7: View {
    @State private var selection = 3
    private let list = ["みかん",
                        "ぶどう",
                        "りんご",
                        "バナナ",
                        "もも"]

    var body: some View {
        HStack {
            Text("選択値：\(list[selection])")
            Picker(selection: $selection, label:
                Text("フルーツを選択")) {
                ForEach(0..<list.count, id: \.self) { index in
                    Text(list[index]).tag(index)
                }
            }.pickerStyle(.wheel)
            .frame(width: 200)
        }
    }
}


//struct Knok7: View {
//    var pokemons = ["Snorlax", "Pikachu", "Slowpoke", "Meowth"]
//    @State private var selectedPokemon = 0
//
//    var body: some View {
//        HStack {
//            Spacer()
//            Text(pokemons[selectedPokemon])
//            Picker("Pokemon", selection: $selectedPokemon) {
//                ForEach(0 ..< pokemons.count) {
//                    Text(self.pokemons[$0])
//                }
//            }.pickerStyle(WheelPickerStyle())
//                .onReceive([self.selectedPokemon].publisher.first()) { (value) in
//                    print("selectedPokemon: \(value)")
//                    print(self.pokemons[value])
//            }
//        }
//    }
//}

struct Knok7_Previews: PreviewProvider {
    static var previews: some View {
        Knok7()
    }
}
