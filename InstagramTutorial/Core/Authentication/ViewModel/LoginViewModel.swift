//
//  LoginViewModel.swift
//  InstagramTutorial
//
//  Created by Claudio Tendean on 26/07/23.
//

import Foundation


class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func singIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
