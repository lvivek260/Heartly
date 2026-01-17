//
//  TransprantButtonView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 11/01/26.
//

import SwiftUI

struct TransprantButtonView: View {
    let image: ImageResource
    let action: ()->Void
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                Circle()
                    .fill(.ultraThinMaterial)
                    .frame(width: 44, height: 44)
                    .overlay(
                        Circle()
                            .stroke(.regularMaterial, lineWidth: 1.5)
                    )
                
                Image(image)
                    .foregroundStyle(.regularMaterial)
            }
        })
    }
}

