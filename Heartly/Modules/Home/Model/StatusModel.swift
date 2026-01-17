//
//  StatusModel.swift
//  Heartly
//
//  Created by Vivek Lokhande on 17/01/26.
//

import Foundation


struct StatusModel: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let image: ImageResource
}
