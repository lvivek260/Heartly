//
//  TabBarView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI


struct TabBarContanerView: View {

    @State private var selectedTab: Tab = .home

    var body: some View {
        ZStack {
            selectedView

            VStack {
                Spacer()
                TabBarView(tab: $selectedTab)
            }
        }
    }

    // MARK: - Selected View
    @ViewBuilder
    private var selectedView: some View {
        switch selectedTab {
        case .home:
            HomeView()
        case .favorite:
            FavoriateView()
        case .add:
            Add()
        case .message:
            MessageView()
        case .profile:
            ProfileView()
        }
    }
}

#Preview {
    TabBarContanerView()
}
