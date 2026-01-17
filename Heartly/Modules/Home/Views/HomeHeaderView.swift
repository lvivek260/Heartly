//
//  HomeHeaderView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack {
            Text("Explore")
                .font(.system(size: 24, weight: .bold))
            
            Spacer()
              
            Button(action: {
                
            }, label: {
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 36, height: 36)
                    Image(.iconNotification)
                }
            })
           
        }
        .padding(.all)
    }
}
