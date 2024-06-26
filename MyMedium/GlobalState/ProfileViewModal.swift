//
//  ProfileViewModal.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
class ProfileViewModel: ObservableObject {
    
    @Published var selectedAuthor: Author = DummyData().authorData
    @Published var selectedUserArticle: TrendingArticles? = nil
    @Published var isLoading: Bool = false
    
    
    func selectedAuthorArticle(parameters: ArticleListParams) {
        isLoading = true
        ArticleServices().getTrendingArticle(parameters: parameters.toDictionary()){
            result in
            switch result {
            case .success(let data):
                self.selectedUserArticle = data
                self.isLoading = false
            case .failure(let error):
                self.isLoading = false
                switch error {
                case .NetworkErrorAPIError(let errorMessage):
                    print(errorMessage)
                case .BadURL:
                    print("BadURL")
                case .NoData:
                    print("NoData")
                case .DecodingError:
                    print("DecodingError")
                }
            }
        }
    }
}
