//
//  Knok52.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/02.
//

import SwiftUI

private class Viewmodel {
    
    static let share = Viewmodel()
    
    @Published var todoList: [String]?
    
    func storeTodo(text: String) {
        self.todoList?.append(text)
    }
    
    func getTodoList() -> [String] {
        guard let list = todoList else { return [""] }
        return list
    }
}

struct Knok52: View {
    @State private var navigationLinkIsActive = false
    var body: some View {
        NavigationStack{
            List {
                ForEach(0..<(Viewmodel.share.getTodoList().count)) { index in
                    Text(Viewmodel.share.getTodoList()[index])
                }
            }
            .navigationTitle("TODO")
            .navigationBarTitleDisplayMode(.large)
            NavigationLink(destination: AddView(),
                           isActive: $navigationLinkIsActive,
                           label: {
                Text("追加")
            })
        }
    }
}

struct AddView: View {
    @State private var text = ""
    @Environment(\.presentationMode) var presentationMode
    private let viewmodel = Viewmodel()
    var body: some View {
        VStack {
            Text("todo入れやがれ")
            TextField("入力", text: $text)
                .frame(width: 200, height: 30)
            Button {
                Viewmodel.share.todoList?.append(text)
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("追加")
            }

        }
    }
}

struct Knok52_Previews: PreviewProvider {
    static var previews: some View {
        Knok52()
    }
}
