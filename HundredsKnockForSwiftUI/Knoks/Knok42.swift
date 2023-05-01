//
//  Knok42.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/01.
//

import SwiftUI
import Combine

/// コンプリーション使用しないようにする
struct Knok42: View {
    
    @State private var repositories: [Repository] = []
    @State private var showingAlert = false
    @State private var errorMessage = ""
    @State private var subscriptions = Set<AnyCancellable>()
    private var viewModel = Knok42ViewModel()
    
    var body: some View {
        List {
            ForEach(repositories) { item in
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(Font.system(size: 24).bold())
                    Text(item.description ?? "")
                    
                }
            }
        }
        .onAppear {
            GithubAPI.searchRepos(page: 1, perPage: 30)
                .sink(receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        break
                    case let .failure(error):
                        self.showingAlert = true
                        self.errorMessage = error.localizedDescription
                    }
                }, receiveValue: { repositories in
                    self.repositories = repositories
                })
                .store(in: &self.subscriptions)
        }
    }
}

fileprivate struct Knok42ViewModel {
    private var repositories: [Repository] = []
    
    static func fetchGithub() {
        
    }
}

fileprivate struct GithubAPI {
    static func searchRepos(page: Int, perPage: Int) -> AnyPublisher<[Repository], Error> {
        let url = URL(string: "https://api.github.com/search/repositories?q=swift&sort=stars&page=\(page)&per_page=\(perPage)")!
        return URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap { try JSONDecoder().decode(GithubSearchResult.self, from: $0.data).items }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}


struct Knok42_Previews: PreviewProvider {
    static var previews: some View {
        Knok42()
    }
}
