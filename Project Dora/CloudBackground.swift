//
//  CloudBackground.swift
//  Project Dora
//
//  Created by Dayan Abdulla on 12/23/24.
//Cloud background with gradient
import SwiftUI

struct CloudBackground: View {
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.blue.opacity(0.8),
                    Color.blue.opacity(0.7),
                    Color.blue.opacity(0.6),
                    Color.blue.opacity(0.5),
                    Color.blue.opacity(0.4),
                    Color.blue.opacity(0.3),
                    Color.blue.opacity(0.2),
                    Color.blue.opacity(0.1),
                    Color.white.opacity(0.05)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)

            // Decorative images
            ZStack {
                Image("c") // Top
                    .resizable()
                    .scaledToFit()
                    .frame(height: 170)
                    .offset(CGSize(width: 155, height: -240))

                Image("c") // Bottom
                    .resizable()
                    .scaledToFit()
                    .frame(height: 170)
                    .offset(CGSize(width: 100, height: 330))

                Image("c") // Mid
                    .resizable()
                    .scaledToFit()
                    .frame(height: 130)
                    .offset(CGSize(width: -250, height: -90))
            }
        }
    }
}
