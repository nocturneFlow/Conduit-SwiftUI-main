//
//  ProfileServers.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
import Alamofire

class ProfileServices {
    
    func requestFollow (
        parameters: Parameters?,
        endpoint: String,
        completion: @escaping(Result<FollowUser,NetworkError>) -> Void){
            return RestAPIClient.request(type: FollowUser.self,
                                         endPoint: "\(ProfileApiEndpoint().createEndPoint(endPoint: .follow))/\(endpoint)",
                                         method:.post,
                                         parameters:parameters,
                                         completion: completion
            )
        }
    
    func removeFollow (
        parameters: Parameters?,
        endpoint: String,
        completion: @escaping(Result<FollowUser,NetworkError>) -> Void){
            return RestAPIClient.request(type: FollowUser.self,
                                         endPoint: "\(ProfileApiEndpoint().createEndPoint(endPoint: .follow))/\(endpoint)",
                                         method:.delete,
                                         parameters:parameters,
                                         completion: completion
            )
        }
}
