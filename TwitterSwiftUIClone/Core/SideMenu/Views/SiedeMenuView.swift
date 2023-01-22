//
//  SiedeMenuView.swift
//  TwitterSwiftUIClone
//
//  Created by Sabrina Inzillo on 09.01.23.
//

import SwiftUI

struct SiedeMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bruce Wayne")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel )
                    }
                } else if viewModel == .logout {
                    
                } else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
              
            }
            
            Spacer()
        }
    }
}

struct SiedeMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SiedeMenuView()
    }
}

