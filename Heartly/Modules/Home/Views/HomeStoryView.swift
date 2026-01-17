//
//  HomeStoryView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 11/01/26.
//

import SwiftUI

struct HomeStoryView: View {
    let viewModel: HomeViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())], spacing: 20) {
                ForEach(viewModel.status, id: \.id)  { item in
                    let isFirstCell = item == viewModel.status.first
                    HomeStoryViewCell(
                        status: item,
                        isFirst: isFirstCell
                    )
                }
            }
            .padding(.horizontal)
        }
    }
}

struct HomeStoryViewCell: View {
    let status: StatusModel
    let isFirst: Bool
    
    var body: some View {
        VStack {
            ZStack {
                imageBackground
                imageView
                
                if (isFirst) {
                    addYourStoryButtonView
                        .offset(x: 27, y: 20)
                }
            }
            titleView
        }
    }
    
    var titleView: some View {
        Text(status.name)
            .font(.system(size: 13.12, weight: .semibold))
    }
    
    var imageView: some View {
        Image(status.image)
            .resizable()
            .frame(width: 60, height: 60)
    }
    
    var imageBackground: some View {
        ZStack {
            Capsule()
                .fill(.white)
                .frame(width: 72, height: 70)
                .offset(y: 1)
            
            Circle()
                .fill(
                    LinearGradient(
                        colors: [Color(hex: "#DEE2E7"),
                                 Color(hex: "#DBE0E7")],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 70, height: 70)
        }
    }
    
    var addYourStoryButtonView: some View {
        Button(action: {
            
        }, label: {
            ZStack {
                Circle()
                  .fill(.white)
                  .frame(width: 21, height: 21)
                
                Circle()
                  .fill(Color(hex: "#E1225B"))
                  .frame(width: 17.93, height:  17.93)
                
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 8, height: 8)
                    .bold()
                    .foregroundStyle(.white)
            }
           
        })
    }
}

#Preview {
    HomeView()
}
