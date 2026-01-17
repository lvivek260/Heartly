//
//  RoundedCorner.swift
//  Heartly
//
//  Created by Vivek Lokhande on 11/01/26.
//
import SwiftUI

struct RoundedCorner: Shape {
    var radius: CGFloat = 16
    var corners: UIRectCorner = [.topLeft, .topRight]

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
