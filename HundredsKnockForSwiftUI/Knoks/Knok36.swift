//
//  Knok36.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/04/26.
//

import SwiftUI

struct Knok36: View {
    var body: some View {
        NavigationLink {
            SecondsView()
        } label: {
            Text("Knok36")
        }
    }
}

private struct SecondsView: View {
    var body: some View {
        NavigationLink {
            ThirdView()
        } label: {
            Text("SecondView")
        }
    }
}

private struct ThirdView: View {
    var body: some View {
        NavigationLink {
            
        } label: {
            Text("ThirdView")
        }
    }
}

// 模範解答

//struct CompleteView: View {
//    @State var password: String = ""
//    var body: some View {
//        Text("Complete")
//            .padding()
//            .navigationBarTitle("Complete")
//    }
//}
//
//class EmailViewModel: ObservableObject {
//    @Published var email = "" {
//        didSet {
//            UserDefaults.standard.set(email, forKey: "email")
//        }
//    }
//    @Published var isActive: Bool = false
//    private var isFirstAppear = true
//
//    func onAppear() {
//        guard isFirstAppear else {
//            return
//        }
//        isFirstAppear = false
//
//        guard let email = UserDefaults.standard.string(forKey: "email") else {
//            return
//        }
//        self.email = email
//
//        // Validation
//        if self.email.count > 8 {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.isActive = true
//            }
//        }
//    }
//}
//
//struct EmailView: View {
//    @ObservedObject var emailViewModel = EmailViewModel()
//    var body: some View {
//        VStack(spacing: 16) {
//            TextField("email", text: $emailViewModel.email)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//            NavigationLink(destination: PasswordView(), isActive: $emailViewModel.isActive) {
//                ButtonView(title: "次へ")
//            }
//
//            Spacer()
//        }.onAppear{
//            self.emailViewModel.onAppear()
//        }
//        .padding()
//        .navigationBarTitle("Email")
//    }
//}
//
//struct EmailView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmailView()
//    }
//}
//
//class PasswordViewModel: ObservableObject {
//    @Published var password = "" {
//        didSet {
//            UserDefaults.standard.set(password, forKey: "password")
//        }
//    }
//
//    @Published var isActive: Bool = false
//    private var isFirstAppear = true
//
//    func onAppear() {
//        guard isFirstAppear else {
//            return
//        }
//        isFirstAppear = false
//
//        guard let password = UserDefaults.standard.string(forKey: "password") else {
//            return
//        }
//        self.password = password
//        // Validation
//        if self.password.count > 8 {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
//                self.isActive = true
//            }
//        }
//    }
//}
//
//struct PasswordView: View {
//    @ObservedObject var passwordViewModel = PasswordViewModel()
//    var body: some View {
//        VStack(spacing: 16) {
//            TextField("password", text: $passwordViewModel.password)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//            NavigationLink(destination: CompleteView(), isActive: $passwordViewModel.isActive) {
//                ButtonView(title: "Next")
//            }
//
//            Spacer()
//        }.onAppear{
//            self.passwordViewModel.onAppear()
//        }
//        .padding()
//        .navigationBarTitle("Password")
//    }
//}
//
//struct PasswordView_Previews: PreviewProvider {
//    static var previews: some View {
//        PasswordView()
//    }
//}


struct Knok36_Previews: PreviewProvider {
    static var previews: some View {
        Knok36()
    }
}
