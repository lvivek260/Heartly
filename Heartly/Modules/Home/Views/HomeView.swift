//
//  HomeView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI

struct HomeView: View {
    let viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            HomePageBackground()
            ScrollView {
                VStack {
                    HomeHeaderView()
                    HomeStoryView(viewModel: viewModel)
                    HomeHeaderButtonsView()
                    HomeContantGraidView()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeView()
}
