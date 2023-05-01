//
//  Knok40.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/01.
//

import SwiftUI

struct Knok40: View {
    private let url = "https://github.com/"
    var body: some View {
        AttributedText(getAttributeString())
    }
    
    func getAttributeString() -> NSAttributedString {
            let baseString = """
            This is a sentence that includes a link to the settings app.
            This is a sentence that includes a link to the Google search.
            """

            let attributedString = NSMutableAttributedString(string: baseString)
            attributedString.addAttribute(.link,
                                          value: UIApplication.openSettingsURLString,
                                          range: NSString(string: baseString).range(of: "the settings app"))
            attributedString.addAttribute(.link,
                                          value: "https://github.com/",
                                          range: NSString(string: baseString).range(of: "the Google search"))
            return attributedString
        }
}

struct AttributedText: UIViewRepresentable {
    var attributedText: NSAttributedString

    init(_ attributedText: NSAttributedString) {
        self.attributedText = attributedText
    }

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isEditable = false
        textView.isSelectable = true
        return textView
    }

    func updateUIView(_ textView: UITextView, context: Context) {
        textView.attributedText = attributedText
    }
}

struct Knok40_Previews: PreviewProvider {
    static var previews: some View {
        Knok40()
    }
}
