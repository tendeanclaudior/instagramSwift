//
//  SearchView.swift
//  InstagramTutorial
//
//  Created by Claudio Tendean on 17/07/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchVieModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 12) {
                    ForEach(viewModel.user) { user in
                        NavigationLink(value: user) {
                            HStack{
                                CircularProfileImageView(user: user, size: .xSmall)
                                
                                VStackLayout(alignment: .leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundColor(Color(.black))
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
