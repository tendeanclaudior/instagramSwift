//
//  User.swift
//  InstagramTutorial
//
//  Created by Claudio Tendean on 20/07/23.
//
// Mmebuat data dummy

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Velan", profileImageUrl: nil,fullname: "Velan Kakenturan", bio: "my name is velan", email: "velan@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Swing", profileImageUrl: nil, fullname: "Swing Tombatu", bio: "my name is swing", email: "swing@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Quen", profileImageUrl: nil, fullname: "Quenshe Kakenturan", bio: "my name is quen", email: "quen@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Yudit", profileImageUrl: nil, fullname: "Yudit Koka", bio: "my name is yudit", email: "yudit@gmail.com"),
    ]
}
