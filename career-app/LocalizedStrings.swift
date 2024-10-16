//
//  LocalizedStrings.swift
//  career-app
//
//  Created by Amaryllis Rosemaria Baldrez Calefi on 15/10/24.
//

import Foundation

class LocalizedStrings {
    // Defina as chaves como estáticas
    static let loginButtonLabel = "login_button_label"
    static let errorMessageInvalidCredentials = "error_message_invalid_credentials"
    
    // Método para buscar a string localizada
    static func localizedString(string key: String) -> String {
        // Busca a string localizada usando NSLocalizedString
        return NSLocalizedString(key, comment: "")
    }
}
