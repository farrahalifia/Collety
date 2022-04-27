//
//  SplashScreenView.swift
//  Collety
//
//  Created by Farrah Alifia on 27/04/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            WelcomeView()
        } else {
            VStack {
                VStack {
                    Image("collety_app_splashscreen")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    Image("collety_app_text")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 80)
                        .padding(.vertical,10)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.3)) {
                        self.size = 1.0
                        self.opacity = 1.0
                    }
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
        
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
