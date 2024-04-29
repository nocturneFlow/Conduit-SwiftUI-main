//
//  ProfileModal.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
// MARK: - FollowUser
struct FollowUser: Codable {
    let profile: Profile?
}

// MARK: - Profile
struct Profile: Codable {
    let username, bio, image: String?
    let following: Bool?
}
