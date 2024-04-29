//
//  FavoritesApiEndPoint.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
class FavoritesApiEndpoint {
    
    enum FavoritesApiType {
        case addBookmark
    }
    
    func createEndPoint(endPoint: FavoritesApiType) -> String {
        switch endPoint {
        case .addBookmark:
            return createApi(endPoint: "articles/")
        }
    }
    
    func createApi(endPoint: String) -> String {
        return AppConst.ApiConst().apiEndPoint + endPoint
    }
}
