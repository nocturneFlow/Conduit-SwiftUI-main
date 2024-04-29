//
//  CommentServers.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
import Alamofire

class CommentsServices {
    
    func getComments (
        parameters: Parameters?,
        endpoint: String,
        completion: @escaping(Result<CommentListResponse,NetworkError>) -> Void){
            return RestAPIClient.request(type: CommentListResponse.self,
                                         endPoint: CommentsApiEndpoint().createEndPoint(endPoint: .getComments) + endpoint,
                                         method:.get,
                                         parameters:parameters,
                                         completion: completion
            )
        }
    
    func addComment (
        parameters: Parameters?,
        endpoint: String,
        completion: @escaping(Result<CommentResponse,NetworkError>) -> Void){
            return RestAPIClient.request(type: CommentResponse.self,
                                         endPoint: CommentsApiEndpoint().createEndPoint(endPoint: .postComments) + endpoint,
                                         method:.post,
                                         parameters:parameters,
                                         completion: completion
            )
        }
    
    func deleteComment (
        parameters: Parameters?,
        endpoint: String,
        costumeCompletion: ((HTTPURLResponse?) -> Void)? = nil,
        completion: @escaping(Result<String,NetworkError>) -> Void) {
            return RestAPIClient.request(type: String.self,
                                         endPoint: CommentsApiEndpoint().createEndPoint(endPoint: .deleteComment) + endpoint,
                                         method:.delete,
                                         parameters:parameters,
                                         completion: completion,
                                         costumeCompletion: costumeCompletion
            )
        }
}
