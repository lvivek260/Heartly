//
//  TabBarView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI

struct TabBarView: View {

    @Binding var tab: Tab

    @Namespace private var tabAnimation

    private let barHeight: CGFloat = 64
    private let cornerRadius: CGFloat = 40

    var body: some View {
        HStack {
            ForEach(Tab.allCases, id: \.self) { item in
                Spacer()
                tabButton(for: item)
                Spacer()
            }
        }
       
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
        .frame(height: barHeight)
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .overlay(outerBorder)
        .overlay(innerBorder)
        .padding(.horizontal, 18)
    }

    // MARK: - Borders
    private var outerBorder: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .stroke(Color(hex: "#DEE2E7"), lineWidth: 5)
    }

    private var innerBorder: some View {
        RoundedRectangle(cornerRadius: cornerRadius - 4)
            .stroke(.thickMaterial, lineWidth: 2)
            .padding(2)
    }

    // MARK: - Tab Button
    private func tabButton(for item: Tab) -> some View {
        let isSelected = tab == item

        return Button {
            withAnimation(.spring(response: 0.35, dampingFraction: 0.8)) {
                tab = item
            }
        } label: {
            ZStack {
                if isSelected {
                    Circle()
                        .fill(Color(hex: "#DD88CF"))
                        .matchedGeometryEffect(
                            id: "TAB_BG",
                            in: tabAnimation
                        )
                        .frame(width: 44, height: 44)
                }

                Image(item.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .foregroundColor(
                        isSelected ? .white : Color(hex: "#A58AA5")
                    )
            }
            .frame(width: 44, height: 44)
        }
    }
}

#Preview {
    TabBarContanerView()
}
