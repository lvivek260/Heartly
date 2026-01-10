//
//  Tab.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import Foundation

enum Tab: Int, CaseIterable {
    case home
    case favorite
    case add
    case message
    case profile

    var icon: ImageResource {
        switch self {
        case .home: return .homeTab
        case .favorite: return .favoriteTab
        case .add: return .addTab
        case .message: return .messageTab
        case .profile: return .profileTab
        }
    }
}
