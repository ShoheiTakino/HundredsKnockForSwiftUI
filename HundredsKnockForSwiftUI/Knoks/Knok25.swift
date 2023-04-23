//
//  Knok25.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/23.
//

import SwiftUI

struct Knok25: View {
    
    @State private var list = ["saunas","fujimi","kairyo","nobeha"]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(0 ..< list.count, id: \.self) { index in
                        Text(list[index])
                    }
                    .onDelete(perform: removeRow)
                }
                .toolbar {
                    EditButton()
                }
            }
        }
    }
    
    func removeRow(offsets: IndexSet) {
        list.remove(atOffsets: offsets)
    }
}

// 模範解答

//struct Knok25: View {
//    @State private var users = ["Paul", "Taylor", "Adele"]
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(users, id: \.self) { user in
//                    Text(user)
//                }
//                .onDelete(perform: delete)
//            }
//            .navigationBarItems(trailing: EditButton())
//        }
//    }
//
//    func delete(at offsets: IndexSet) {
//        users.remove(atOffsets: offsets)
//    }
//}

struct Knok25_Previews: PreviewProvider {
    static var previews: some View {
        Knok25()
    }
}
