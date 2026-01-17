//
//  HomeViewModel.swift
//  Heartly
//
//  Created by Vivek Lokhande on 11/01/26.
//

import Foundation

struct PostModel: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let profileIcon: ImageResource
    let contentIcon: ImageResource
}


class HomeViewModel {
    let status: [StatusModel] = [
        .init(name: "Your Story", image: .yourStory),
        .init(name: "Ben", image: ._1Person),
        .init(name: "Lucie", image: ._2Person),
        .init(name: "Marry", image: ._3Person),
        .init(name: "Claire", image: ._4Person),
        .init(name: "Lina", image: ._5Person),
        .init(name: "Jo", image: ._6Person),
        .init(name: "Henry", image: ._7Person),
        .init(name: "Pierre", image: ._8Person),
    ]
    
    let posts: [PostModel] = [
        .init(name: "Noemi Slater", profileIcon: ._9Person, contentIcon: .post1),
        .init(name: "Noemi Slater", profileIcon: ._6Person, contentIcon: .post2),
        .init(name: "Noemi Slater", profileIcon: ._5Person, contentIcon: .post3),
        .init(name: "Noemi Slater", profileIcon: ._4Person, contentIcon: .post4),
        .init(name: "Noemi Slater", profileIcon: ._3Person, contentIcon: .post5),
        .init(name: "Noemi Slater", profileIcon: ._2Person, contentIcon: .post6),
        .init(name: "Noemi Slater", profileIcon: ._1Person, contentIcon: .post7),
    ]
}
