//
//  Knok29.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/26.
//

import SwiftUI

struct Knok29: View {
    @State private var selectedValue = "りんご"
    var body: some View {
        HStack {
            Picker("", selection: $selectedValue) {
                Text("りんご").tag(0)
                Text("みかん").tag(1)
                Text("レモン").tag(2)
            }
            .pickerStyle(.wheel)
            .frame(width: 100)
            .clipped()
            Picker("", selection: $selectedValue) {
                Text("りんご").tag(0)
                Text("みかん").tag(1)
                Text("レモン").tag(2)
            }
            .pickerStyle(.wheel)
            .frame(width: 100)
            .clipped()
        }
    }
}

// 模範解答

//struct Knok29: View {
//    @State private var selectedHour = 8
//    @State private var selectedMinute = 30
//
//    var body: some View {
//        GeometryReader { geometry in
//            HStack {
//                Picker(selection: self.$selectedHour, label: EmptyView()) {
//                    ForEach(0 ..< 24) {
//                        Text("\($0)")
//                    }
//                }.pickerStyle(WheelPickerStyle())
//                    .onReceive([self.selectedHour].publisher.first()) { (value) in
//                        print("hour: \(value)")
//                }.labelsHidden()
//                    .frame(width: geometry.size.width / 2, height: geometry.size.height)
//                    .clipped()
//
//                Picker(selection: self.$selectedMinute, label: EmptyView()) {
//                    ForEach(0 ..< 60) {
//                        Text("\($0)")
//                    }
//                }.pickerStyle(WheelPickerStyle())
//                    .onReceive([self.selectedMinute].publisher.first()) { (value) in
//                        print("minute: \(value)")
//                }.labelsHidden()
//                    .frame(width: geometry.size.width / 2, height: geometry.size.height)
//                    .clipped()
//            }
//        }.padding()
//    }
//}


struct Knok29_Previews: PreviewProvider {
    static var previews: some View {
        Knok29()
    }
}
