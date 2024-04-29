//
//  CommentModal.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation

// MARK: - CommentResponse
struct CommentListResponse: Codable {
    let comments: [Comment]?
}

struct CommentResponse: Codable {
    let comments: Comment?
}


// MARK: - Comment
struct Comment: Codable, Identifiable {
    let id: Int?
    let createdAt, updatedAt, body: String?
    let author: Author?
}


struct Commetdata {
    let data23 = Comment(id: 1, createdAt: "", updatedAt: "", body: "WHT", author: Author(username: "giris", bio: "bio", image: "image"))
}
