//
//  SearchViewModel.swift
//  InstagramTutorial
//
//  Created by Claudio Tendean on 28/07/23.
//

import Foundation

class SearchVieModel: ObservableObject {
    @Published var user = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.user = try await UserService.fetchAllUsers()
    }
}
