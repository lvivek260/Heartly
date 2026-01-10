//
//  LoginView.swift
//  Heartly
//
//  Created by Vivek Lokhande on 10/01/26.
//

import SwiftUI

struct LoginView: View {
    @State private var animateText = false
    @State private var showDetail = false

    var body: some View {
        NavigationStack {
            ZStack {
                LoginBackgroundView()
                ScrollView {
                    VStack {
                        bannarView
                        titleView
                        Spacer().frame(height: 70)
                        
                        VStack(spacing: 16) {
                            googleBtnView
                            facebookBtnView
                            useMobileNumberBtn
                            signUpView
                        }
                        .padding(.horizontal, 28)
                    }
                }
            }
            .navigationDestination(isPresented: $showDetail) {
                TabBarContanerView()
            }
        }
    }

    var bannarView: some View {
        Image(.loginBannar)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    
    var titleView: some View {
        Text(LoginConstants.letsMeetNew)
            .font(.system(size: 24, weight: .bold))
            .multilineTextAlignment(.center)
            .opacity(animateText ? 1 : 0)
            .offset(y: animateText ? 0 : 50)
            .onAppear {
                withAnimation(.easeOut(duration: 0.8)) {
                    animateText = true
                }
            }
    }
    
    var signUpView: some View {
        HStack(spacing: 6) {
            Text(LoginConstants.dontHaveAccount)
                .font(.system(size: 15))
            Text(LoginConstants.signUp)
                .font(.system(size: 15, weight: .bold))
        }
    }
    
    var googleBtnView: some View {
        FillButtonWithIcon(
            title: LoginConstants.continuewithGoogle,
            backgroundColor: Color(hex: "#4E229C"), icon: .init(.iconGoogle),
            action: {
                showDetail = true
            })
    }
    
    var facebookBtnView: some View {
        FillButtonWithIcon(
            title: LoginConstants.continuewithFacebook,
            backgroundColor: Color(hex: "#1877F2"), icon: .init(.iconFacebook),
            action: {
                showDetail = true
            })
    }
    
    var useMobileNumberBtn: some View {
        FillButton(
            title: LoginConstants.useMobileNumber,
            backgroundColor: Color(hex: "#4B164C")
        ) {
            showDetail = true
        }
    }
}

#Preview {
    LoginView()
}


