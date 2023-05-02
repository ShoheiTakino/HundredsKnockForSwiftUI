//
//  Knok54.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/02.
//

import SwiftUI

struct Knok54: View {
    @State private var showingModal = false
    @State private var text = ""
    var body: some View {
        VStack {
            Text("入力せ")
            TextField("入力", text: $text)
                .frame(width: 200, height: 30)
            Button(action: {
                self.showingModal.toggle()
            }) {
                Text("Show Modal.")
            }.sheet(isPresented: $showingModal) {
                a(text: text)
            }
            
        }
    }
}
private struct a: View {
    
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
//struct Knok54: View {
//    @State var name = ""
//    @State var showingModal = false
//    var body: some View {
//        VStack(spacing: 16) {
//            TextField("Input Name", text: $name)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
//            Text("Name: \(name)")
//
//            Button {
//                showingModal = true
//            } label: {
//                Text("Show Modal")
//                    .font(Font.system(size: 20))
//                    .foregroundColor(Color.white)
//                    .padding(16)
//                    .background(Color.gray)
//                    .cornerRadius(16)
//            }
//            .sheet(isPresented: $showingModal) {
//                PokemonView(pokemonName: name)
//            }
//        }
//    }
//}
//
//struct PokemonView: View {
//    let pokemonName: String
//    var body: some View {
//        Text("Name: \(pokemonName)")
//    }
//}

struct Knok54_Previews: PreviewProvider {
    static var previews: some View {
        Knok54()
    }
}
