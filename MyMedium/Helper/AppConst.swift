//
//  AppConst.swift
//  MediumCopy
//
//  Created by Alan Umirzakov on 24.04.2024.
//

import Foundation
//import AlertToast
import SwiftUI

struct AppConst {
    static let baseurl = "https://reqres.in/api/"
    static let LoginUrl = "login"
    static let usersListUrl = "users"
    static let isLoggedIn = "isLoggedIn"
    static let token = "JWT_token"
    static let isSkipped = "SIKPED"
    static let emailPattern = #"^\S+@\S+\.\S+$"#
    static let imagePath = "https://media5.bollywoodhungama.in/wp-content/uploads/2021/03/WhatsApp-Image-2021-03-26-at-5.08.26-PM.jpeg"
    
    struct ApiConst {
         let apiEndPoint = "https://api.realworld.io/api/"
    }
}

struct AppIconsSF {
    static let emailIcon = "envelope.fill"
    static let passwordIcon = "lock.fill"
    static let eyeOpenIcon = ""
    static let eyeCloseIcon = ""
    static let checkMark = "checkmark.circle.fill"
    static let worngMark = "x.circle"
    static let userIcon = "person.crop.circle.badge.checkmark"
    static let homeIcon = "message"
    static let trandingIcon = "flame.fill"
    static let profileIcon = "book.fill"
    static let settingsIcon = "gear"
    static let editIcon = "pencil"
    static let deleteIcon = "trash"
    static let bookMarkIcon = "bookmark"
    static let bookMarkFillIcon = "bookmark.fill"
    static let closeIcon = "xmark"
    static let removeIcon = "trash"
    static let filtterIcon = "checkmark.square"
}

struct AppKeyBoardType {
    static let `default` = 0 // Default type for the current input method.
    static let asciiCapable = 1 // Displays a keyboard which can enter ASCII characters
    static let numbersAndPunctuation = 2 // Numbers and assorted punctuation.
    static let URL = 3 // A type optimized for URL entry (shows . / .com prominently).
    static let numberPad = 4 // A number pad with locale-appropriate digits (0-9, ۰-۹, ०-९, etc.). Suitable for PIN entry.
    static let phonePad = 5 // A phone pad (1-9, *, 0, #, with letters under the numbers).
    static let namePhonePad = 6 // A type optimized for entering a person's name or phone number.
    static let emailAddress = 7 // A type optimized for multiple email address entry (shows space @ . prominently).
    static let decimalPad = 8 // A number pad with a decimal point.
    static let twitter = 9 // A type optimized for twitter text entry (easy access to @ #)
    static let webSearch = 10 // A default keyboard type with URL-oriented addition (shows space . prominently).
    static let asciiCapableNumberPad = 11 // A number pad (0-9) that will always be ASCII digits.
}


class CreateAlert {
    
//    func createErrorAlert(title: String, subTitle: String?) -> any View {
//        let alertToast = AlertToast(
//            displayMode: .banner(.slide),
//            type: .error(.red),
//            title: title,
//            subTitle: subTitle)
//        return alertToast
//    }
}

