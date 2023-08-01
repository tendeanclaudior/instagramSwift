//
//  UsersStatView.swift
//  InstagramTutorial
//
//  Created by Claudio Tendean on 15/07/23.
//

import SwiftUI

struct UsersStatView: View {
    let value : Int
    let title : String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

struct UsersStatView_Previews: PreviewProvider {
    static var previews: some View {
        UsersStatView(value: 12, title: "Post")
    }
}
