//
//  ProfileApiEndpoint.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
class ProfileApiEndpoint {
    
    enum ProfileApiType {
        case follow
    }
    
    func createEndPoint(endPoint: ProfileApiType) -> String {
        switch endPoint {
        case .follow:
            return createApi(endPoint: "profiles")
        }
    }
    
    func createApi(endPoint: String) -> String {
        return AppConst.ApiConst().apiEndPoint + endPoint
    }
}
