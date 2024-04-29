//
//  CommentsViewModal.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
class CommentsViewModel: ObservableObject {
    
    @Published var show = false
    
    func toggle() {
        show.toggle()
    }
    
    @Published var showAlert = false
    @Published var errorMessage = "" {
        didSet {
            showAlert.toggle()
        }
    }
}
