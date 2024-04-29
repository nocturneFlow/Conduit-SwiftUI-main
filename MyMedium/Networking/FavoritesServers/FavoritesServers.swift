//
//  FavoritesServers.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
import Alamofire

class FavoritesServices {
    
    func bookMarkArticle (
        parameters: Parameters?,
        endpoint: String,
        completion: @escaping(Result<FavArticleRes,NetworkError>) -> Void){
            return RestAPIClient.request(type: FavArticleRes.self,
                                         endPoint: FavoritesApiEndpoint().createEndPoint(endPoint: .addBookmark) + endpoint,
                                         method:.post,
                                         parameters:parameters,
                                         completion: completion
            )
        }
    
    func removeBookMarkArticle (
        parameters: Parameters?,
        endpoint: String,
        completion: @escaping(Result<FavArticleRes,NetworkError>) -> Void){
            return RestAPIClient.request(type: FavArticleRes.self,
                                         endPoint: FavoritesApiEndpoint().createEndPoint(endPoint: .addBookmark) + endpoint,
                                         method:.delete,
                                         parameters:parameters,
                                         completion: completion
            )
        }
}
