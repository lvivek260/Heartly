//
//  BottomLineSegment.swift
//  Heartly
//
//  Created by Vivek Lokhande on 17/01/26.
//


import SwiftUI

struct BottomLineSegment: View {
    @Binding var selectedIndex: Int
    let tabs: [String]

    var body: some View {
        VStack(spacing: 0) {
            // MARK: Tab Buttons
            HStack {
                ForEach(tabs.indices, id: \.self) { index in
                    Button {
                        withAnimation(.spring()) {
                            selectedIndex = index
                        }
                    } label: {
                        Text(tabs[index])
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(selectedIndex == index ? .black : .gray)
                            .frame(maxWidth: .infinity)
                            .padding(.bottom, 10)
                    }
                }
            }

            // MARK: Bottom Line
            ZStack {
                // Background line
                Capsule()
                    .fill(Color(hex: "#787880").opacity(0.2))
                    .frame(height: 4)

                // Moving indicator
                GeometryReader { geo in
                    Capsule()
                        .fill((Color(hex: "#505DB9")))
                        .frame(width: geo.size.width / CGFloat(tabs.count), height: 4)
                        .offset(x: CGFloat(selectedIndex) * geo.size.width / CGFloat(tabs.count))
                        .animation(.easeInOut, value: selectedIndex)
                }
                .frame(height: 4)
            }
        }
        .padding(.horizontal, 24)
    }
}
