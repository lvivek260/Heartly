//
//  FillButton.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI

struct FillButton: View {
    let title: String
    let backgroundColor: Color
    let action: (()->Void)
    
    init(title: String,
         backgroundColor: Color,
         action:  @escaping @MainActor () -> Void,
    ) {
        self.title = title
        self.action = action
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        Button (action: action, label: {
            Text(title)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(
                    Capsule().fill(backgroundColor)
                )
        })
    }
}
