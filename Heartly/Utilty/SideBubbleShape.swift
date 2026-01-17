//
//  SideBubbleShape.swift
//  Heartly
//
//  Created by Vivek Lokhande on 11/01/26.
//
import SwiftUI

struct SideBubbleShape: Shape {
    func path(in rect: CGRect) -> Path {
        let radius: CGFloat = 34
        let curveDepth: CGFloat = 14

        var path = Path()

        // Start top-left
        path.move(to: CGPoint(x: rect.minX + radius, y: rect.minY))

        // Top-left corner
        path.addArc(
            center: CGPoint(x: rect.minX + radius, y: rect.minY + radius),
            radius: radius,
            startAngle: .degrees(-90),
            endAngle: .degrees(180),
            clockwise: true
        )

        // Left side
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - radius))

        // Bottom-left corner
        path.addArc(
            center: CGPoint(x: rect.minX + radius, y: rect.maxY - radius),
            radius: radius,
            startAngle: .degrees(180),
            endAngle: .degrees(90),
            clockwise: true
        )

        // Bottom right curve
        path.addQuadCurve(
            to: CGPoint(x: rect.maxX, y: rect.maxY - radius),
            control: CGPoint(x: rect.maxX - curveDepth, y: rect.maxY)
        )

        // Right side
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + radius))

        // Top right curve
        path.addQuadCurve(
            to: CGPoint(x: rect.minX + radius, y: rect.minY),
            control: CGPoint(x: rect.maxX - curveDepth, y: rect.minY)
        )

        path.closeSubpath()
        return path
    }
}
