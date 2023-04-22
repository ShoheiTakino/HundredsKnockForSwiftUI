//
//  Knok6.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/22.
//

import SwiftUI

struct Knok6: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                
            } label: {
                Knok2()
            }
            .navigationTitle("Ping")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}



struct Knok6_Previews: PreviewProvider {
    static var previews: some View {
        Knok6()
    }
}
