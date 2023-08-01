//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Claudio Tendean on 15/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    private let gridItems : [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    var posts: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
            ScrollView{
                // Header
                ProfileHeaderView(user: user)
                // post grid view
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
