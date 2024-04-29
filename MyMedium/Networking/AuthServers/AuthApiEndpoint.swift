//
//  AuthApiEndpoint.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
class AuthApiEndpoint {
    
    enum AuthApiType {
        case login
        case register
        case profile
        case editProfile
    }
    
    func createEndPoint(endPoint: AuthApiType) -> String {
        switch endPoint {
        case .login:
            return createApi(endPoint: "users/login")
        case .register:
            return createApi(endPoint: "users")
        case .profile:
            return createApi(endPoint: "user")
        case .editProfile:
            return createApi(endPoint: "user")
        }
    }
    
    func createApi(endPoint: String) -> String {
        return AppConst.ApiConst().apiEndPoint + endPoint
    }
}
