//
//  AlertViewModel.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
import AlertToast

class AppViewModel: ObservableObject {
    
    @Published var show = false
    @Published var alertToast = AlertToast(displayMode: .banner(.slide), type: .regular, title: "SOME TITLE"){
          didSet {
              show.toggle()
          }
      }
    
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
