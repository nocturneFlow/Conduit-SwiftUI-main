//
//  NavigationStackViewModal.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
import SwiftUI

class FeedNavigationStackViewModal: ObservableObject {
    @Published var presentedScreen = NavigationPath()
}

class TradingNavigationStackViewModal: ObservableObject {
    @Published var presentedScreen = NavigationPath()
}

class ProfileNavigationStackViewModal: ObservableObject {
    @Published var presentedScreen = NavigationPath()
}
