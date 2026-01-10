//
//  FillButtonWithIcon.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI


struct FillButtonWithIcon: View {
    let title: String
    let backgroundColor: Color
    let icon: Image
    let action: (()->Void)
    
    init(title: String,
         backgroundColor: Color,
         icon: Image,
         action:  @escaping @MainActor () -> Void,
    ) {
        self.title = title
        self.action = action
        self.backgroundColor = backgroundColor
        self.icon = icon
    }
    
    var body: some View {
        Button (action: action, label: {
            HStack(alignment: .center) {
                ZStack {
                    Circle()
                        .fill(.white)
                        .frame(width: 44,height: 44)
                    icon
                        .padding(8)
                }
               
                Text(title)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.trailing, 44)
            }
            .background(
                Capsule().fill(backgroundColor)
            )
        })
    }
}

#Preview {
    LoginView()
}
