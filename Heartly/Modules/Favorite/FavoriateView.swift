//
//  FavoriateView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI

struct FavoriateView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundView
                VStack {
                    Spacer()
                    cardView
                    Spacer()
                    bottomButtonsView
                }
            }
            .navigationTitle("Find your partner")
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
    
    var backgroundView: some View {
        ZStack {
            Color(hex: "#F4EBFF")
               
            VStack {
                Spacer()
                Rectangle()
                    .fill(Color(hex: "#38285A").opacity(0.72))
                    .frame(height: 34)
                    .blur(radius: 30)
            }
        }
        .ignoresSafeArea()
    }
    
    var cardView: some View {
        Image(.post1)
            .resizable()
            .frame(height: 500)
            .clipShape(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
            )
            .padding(.horizontal, 33)
           
            .background{
                Capsule()
                    .fill(Color(hex: "#38285A").opacity(0.72))
                    .frame(width: 450, height: 500)
                    .blur(radius: 50)
            }
    }
    
    var bottomButtonsView: some View {
        HStack(spacing: 30) {
            Button(action: {
                
            }) {
                Circle()
                    .fill(.white)
                    .frame(width: 44, height: 44)
                    .overlay {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .bold()
                            .foregroundStyle(.black)
                        
                    }
            }
            
            Button(action: {
                
            }) {
                Circle()
                    .fill(Color(hex: "#4B164C"))
                    .frame(width: 60, height: 60)
                    .overlay {
                        Image(systemName: "star.fill")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 26, height: 26)
                    }
            }
            
            
            Button(action: {
                
            }) {
                Circle()
                    .fill(Color(hex: "#DD88CF"))
                    .frame(width: 44, height: 44)
                    .overlay {
                        Image(.favoriteTab)
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 22, height: 20)
                    }
            }
        }
        .padding(.bottom, 90)
    }
}

#Preview {
    FavoriateView()
}
