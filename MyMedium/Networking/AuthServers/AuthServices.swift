//
//  AuthServices.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
import Alamofire

class AuthServices {
    
    func userLogin (
        parameters: Parameters?,
        completion: @escaping(Result<LoginSuccess,NetworkError>) -> Void){
            return RestAPIClient.request(type: LoginSuccess.self,
                                         endPoint: AuthApiEndpoint().createEndPoint(endPoint: .login),
                                         method:.post,
                                         parameters:parameters,
                                         completion: completion
            )
        }
    
    func createAccount (
        parameters: Parameters?,
        completion: @escaping(Result<CreateAccountResponse,NetworkError>) -> Void){
            return RestAPIClient.request(type: CreateAccountResponse.self,
                                         endPoint: AuthApiEndpoint().createEndPoint(endPoint: .register),
                                         method:.post,
                                         parameters:parameters,
                                         completion: completion
            )
        }
    
    func getUser (
        parameters: Parameters?,
        completion: @escaping(Result<LoginSuccess,NetworkError>) -> Void){
            return RestAPIClient.request(type: LoginSuccess.self,
                                         endPoint: AuthApiEndpoint().createEndPoint(endPoint: .profile),
                                         method:.get,
                                         parameters:parameters,
                                         completion: completion
            )
        }
    
    func updateAccount (
        parameters: Parameters?,
        completion: @escaping(Result<LoginSuccess,NetworkError>) -> Void){
            return RestAPIClient.request(type: LoginSuccess.self,
                                         endPoint: AuthApiEndpoint().createEndPoint(endPoint: .editProfile),
                                         method:.put,
                                         parameters:parameters,
                                         completion: completion
            )
        }
}
