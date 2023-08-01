//
//  Post.swift
//  InstagramTutorial
//
//  Created by Claudio Tendean on 20/07/23.
//
// Membuat data dummy

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    let user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "hallo i'm velan and i first join the instagram", likes: 5534, imageUrl: "batman1", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "hallo i'm quen and i first join the instagram", likes: 6342, imageUrl: "ProfileImage", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "hallo i'm yudit and i first join the instagram", likes: 3434, imageUrl: "batman1", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "hallo i'm swing and i first join the instagram", likes: 4534, imageUrl: "batman1", timestamp: Date(), user: User.MOCK_USERS[1]),
    ]
}
