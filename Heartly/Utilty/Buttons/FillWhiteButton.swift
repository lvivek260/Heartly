//
//  FillWhiteButton.swift
//  Heartly
//
//  Created by Vivek Lokhande on 11/01/26.
//

import SwiftUI

struct FillWhiteButton: View {
    let title: String
    let action: (()->Void)

    var body: some View {
        Button (action: action, label: {
            Text(title)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(
                    Capsule().fill(.white)
                )
        })
    }
}
