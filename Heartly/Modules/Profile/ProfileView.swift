//
//  ProfileView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedIndex = 0
      let tabs = ["Posts", "Likes", "Saved"]

    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundView
                ScrollView {
                    VStack {
                        headerView
                        segmentView
                    }
                }
            }
            .navigationTitle("Claire Smith")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                }
            }
        }
    }
    
    var backgroundView: some View {
        Color(hex: "#F2EDFF")
            .ignoresSafeArea()
    }
    
    var headerView: some View {
        VStack(spacing: 24) {
            VStack(spacing: 15) {
                Image(._9Person)
                Text("103K Followers")
                    .font(.system(size: 17, weight: .bold))
            }
            
            HStack(spacing: 13) {
                FillWhiteButton(title: "Follow", action: {})
                FillWhiteButton(title: "Message", action: {})
            }
        }
        .padding(20)
    }
    
    var segmentView: some View {
        VStack {
            // Your custom segment
            BottomLineSegment(selectedIndex: $selectedIndex, tabs: tabs)
            
            // Show content based on selected tab
            Group {
                switch selectedIndex {
                case 0: PostsView()
                case 1: LikesView()
                case 2: SavedView()
                default: Color.clear
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.1))
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ProfileView()
}
