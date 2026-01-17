//
//  HomeHeaderButtonsView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 11/01/26.
//

import SwiftUI

struct HomeHeaderButtonsView: View {
    var body: some View {
        HStack(spacing: 30) {
            FillWhiteButton(title: "Make Friends") {
                
            }
            FillWhiteButton(title: "Search Partners") {
                
            }
        }
        .padding(.top, 20)
        .padding(.horizontal, 30)
    }
}
