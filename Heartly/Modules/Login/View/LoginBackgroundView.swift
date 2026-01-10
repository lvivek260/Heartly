//
//  LoginBackgroundView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI

struct LoginBackgroundView: View {
    var body: some View {
        ZStack {
            colorBackground
            VStack {
                circleView(size: 117)
                Spacer()
            }
            .offset(x: -20, y: -30)
            
            HStack {
                Spacer()
                circleView(size: 65)
                Spacer().frame(width: 40)
            }
            .offset(y: -50)
            
            elliplseView.opacity(0.5)
        }
        .ignoresSafeArea()
    }
    
    var colorBackground: some View {
        ZStack {
            // Base gradient (your first one)
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color(hex: "#4BB8F9"), location: 0.0),
                    .init(color: Color(hex: "#EE80D2"), location: 0.52),
                    .init(color: Color(hex: "#F6C6EC"), location: 1.0)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )

            // Overlay gradient (second layer)
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color(hex: "#FF009F"), location: 0.0),
                    .init(color: Color(hex: "#FAEAA5"), location: 0.98)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .blendMode(.overlay)
            
            // Overlay gradient (second layer)
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color(hex: "#15294C"), location: 0),
                    .init(color: Color(hex: "#03061C"), location: 1)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .blendMode(.overlay)
            
            // Overlay gradient (second layer)
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color(hex: "#FFFFFF"), location: 0),
                    .init(color: Color(hex: "#FAEFFA"), location: 1)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .blendMode(.overlay)
            
            Color.white.opacity(0.4)
            
            Rectangle()
                .fill(.ultraThinMaterial)
        }
    }
    
    func circleView(size: CGFloat) -> some View {
        Circle()
            .fill(
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color(hex: "#D1BCEC"), location: 0),
                        .init(color: Color(hex: "#BCBEEC").opacity(0), location: 1)
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .frame(width: size, height: size)
    }
    
    var elliplseView: some View {
        VStack {
            HStack {
                Ellipse()
                    .fill(Color(hex: "#F2E7FF"))
                    .frame(width: 257, height: 326)
                Spacer()
            }
           Spacer()
        }
        .offset(x: -130)
        .opacity(0.4)
    }
}

#Preview {
    LoginBackgroundView()
}
