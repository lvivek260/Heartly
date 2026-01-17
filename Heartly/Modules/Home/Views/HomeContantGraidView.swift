//
//  HomeContantGraidView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 11/01/26.
//

import SwiftUI

struct HomeContantGraidView: View {
    let viewModel = HomeViewModel()
    
    var body: some View {
        LazyVGrid(
            columns: [GridItem(.flexible())],
            spacing: 20
        ) {
            ForEach(viewModel.posts, id: \.id) { post in
                HomeContantGraidViewCell(post: post)
            }
        }
        .padding(.all, 20)
    }
}


struct HomeContantGraidViewCell: View {
    let post: PostModel
    
    var body: some View {
        ZStack {
            rectangeBackground
            contentImageView
            imageTitleView
            sideMenuButtons
        }
    }
    
    
    var imageTitleView: some View {
        VStack {
            HStack(spacing: 10) {
                ZStack {
                    Circle()
                        .fill(.white)
                        .frame(width: 75, height: 75)
                    Image(post.profileIcon)
                        .resizable()
                        .frame(width: 70, height: 70)
                }
                
                Text(post.name)
                    .font(.system(size: 17, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.top, 10)
                
                Spacer()
            }
            Spacer()
        }
    }
    
    var contentImageView: some View {
        Image(post.contentIcon)
            .resizable()
            .scaledToFill()
            .clipShape(RoundedRectangle(cornerRadius: 34))
            .padding(.vertical, 20)
            .shadow(
                color: Color.black.opacity(0.3),
                    radius: 8,
                    x: 0,
                    y: 20
                )
    }
    
    var rectangeBackground: some View {
        Rectangle()
            .fill(
              Color(hex: "#F4F7FB")
            )
            .clipShape(RoundedRectangle(cornerRadius: 34))
            .padding(.top, 20)
            .padding(.horizontal, 15)
            .shadow(
                color: Color.black.opacity(0.1),
                    radius: 4,
                    x: 0,
                    y: 5
                )
    }
    
    var sideMenuButtons: some View {
        HStack{
            Spacer()
            VStack(spacing: 10) {
                TransprantButtonView(image: .iconLike) {
                    
                }
                TransprantButtonView(image: .iconMessageHome) {
                    
                }
                TransprantButtonView(image: .iconMore) {
                    
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 20)
            .background(.ultraThinMaterial)
            .clipShape( RoundedCorner(
                radius: 34,
                corners: [.topLeft, .bottomLeft]
            ))
            .overlay(
                RoundedCorner(
                    radius: 34,
                    corners: [.topLeft, .bottomLeft]
                )
                .stroke(.thickMaterial, lineWidth: 1)
            )
        }
    }
    
}
