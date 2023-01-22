//
//  UserStatsView.swift
//  TwitterSwiftUIClone
//
//  Created by Sabrina Inzillo on 09.01.23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing:24) {
            HStack{
                Image(systemName:"mappin.and.ellipse")
                Text("Gotham, NY")
            }
            
            HStack {
                Image(systemName:"link")
                Text("www.thejoker.com")
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        
        HStack(spacing:24) {
            HStack(spacing: 4) {
                Text("807")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 4) {
                Text("6.9M")
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
