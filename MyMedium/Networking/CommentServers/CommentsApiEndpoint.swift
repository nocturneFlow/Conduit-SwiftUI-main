//
//  CommentsApiEndpoint.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
class CommentsApiEndpoint {
    
    enum CommentsApiType {
        case getComments
        case postComments
        case deleteComment
    }
    
    func createEndPoint(endPoint: CommentsApiType) -> String {
        switch endPoint {
        case .getComments:
            return createApi(endPoint: "articles/")
        case .postComments:
            return createApi(endPoint: "articles/")
        case .deleteComment:
            return createApi(endPoint: "articles/")
        }
    }
    
    func createApi(endPoint: String) -> String {
        return AppConst.ApiConst().apiEndPoint + endPoint
    }
}
