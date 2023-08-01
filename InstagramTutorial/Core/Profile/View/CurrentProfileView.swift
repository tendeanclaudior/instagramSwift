//
//  CurrentProfileView.swift
//  InstagramTutorial
//
//  Created by Claudio Tendean on 20/07/23.
//

import SwiftUI

struct CurrentProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
        NavigationStack{
            ScrollView{
                // Header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signout()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentProfileView(user: User.MOCK_USERS[2])
    }
}
