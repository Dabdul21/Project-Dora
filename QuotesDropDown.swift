//
//  QuotesDropDown.swift
//  Project Dora
//
//  Created by Dayan Abdulla on 12/24/24.
//

import SwiftUI

struct QuotesDropDown: View {
    @Binding var isPresented: Bool // Binding to control visibility
    var displayedQuote: String

    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.9), Color.white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            ZStack {
                Image("c") // Top cloud
                    .resizable()
                    .scaledToFit()
                    .frame(height: 170)
                    .offset(CGSize(width: 155, height: -360))

                Image("c") // Bottom cloud
                    .resizable()
                    .scaledToFit()
                    .frame(height: 180)
                    .offset(CGSize(width: 120, height: 300))

                Image("c") // Mid cloud
                    .resizable()
                    .scaledToFit()
                    .frame(height: 160)
                    .offset(CGSize(width: -255, height: -85))
            }

            VStack {
                Spacer()

                // Displayed quote
                Text(displayedQuote)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(15)
                    .shadow(color: .blue.opacity(0.5), radius: 10, x: 0, y: 5)
                    .padding(.horizontal, 30)

                Image("cactus")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 350)

                Spacer()

                // Close button
                Button(action: {
                    isPresented = false // Close the dropdown
                }) {
                    Text("Close")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                        .padding(.horizontal, 40)
                }
            }
        }
    }
}
