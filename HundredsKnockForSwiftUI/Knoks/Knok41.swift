//
//  Knok41.swift
//  HundredsKnockForSwiftUI
//
//  Created by 滝野翔平 on 2023/05/01.
//

import SwiftUI

/// 一旦模範解答通り作成してみる
struct Knok41: View {
    
    @State private var repositories: [Repository] = []
    @State private var showingAlert = false
    @State private var errorMessage = ""

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
            GithubAPI.searchRepos(page: 1, perPage: 30) { result in
                            switch result {
                            case let .success(repositories):
                                DispatchQueue.main.async {
                                    self.repositories = repositories
                                }
                            case let .failure(error):
                                DispatchQueue.main.async {
                                 
                                    self.showingAlert = true
                                }
                            }
                        }
        }
    }
}

fileprivate struct GithubAPI {
    static func searchRepos(page: Int, perPage: Int, completion: @escaping (Result<[Repository], Error>) -> Void) {
            let url = URL(string: "https://api.github.com/search/repositories?q=swift&sort=stars&page=\(page)&per_page=\(perPage)")!
            let task = URLSession.shared.dataTask(with: url){ data, response, error in
                if let error = error {
                    completion(Result.failure(error))
                    return
                }
                do {
                    let repositories = try JSONDecoder().decode(GithubSearchResult.self, from: data!).items
                    completion(Result.success(repositories))
                } catch let error {
                    completion(Result.failure(error))
                }
            }
            task.resume()
        }
}

struct GithubSearchResult: Codable {
    let items: [Repository]
}

struct Repository: Codable, Identifiable, Equatable {
    let id: Int
    let name: String
    let description: String?
    let stargazersCount: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case stargazersCount = "stargazers_count"
    }
}


struct Knok41_Previews: PreviewProvider {
    static var previews: some View {
        Knok41()
    }
}
