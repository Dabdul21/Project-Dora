//
//  ContentView.swift
//  Project Dora
//
//  Created by Dayan Abdulla on 9/26/24.
//
import SwiftUI

struct ContentView: View {
    // Initial offsets for clouds
    @State private var topCloudOffsetX: CGFloat = -55
    @State private var topCloudOffsetY: CGFloat = -19
    @State private var midCloudOffsetX: CGFloat = 70
    @State private var midCloudOffsetY: CGFloat = 10
    @State private var lastCloudOffsetX: CGFloat = -90
    @State private var lastCloudOffsetY: CGFloat = -25

    var body: some View {
        NavigationStack {
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
                .edgesIgnoringSafeArea(.bottom)

                
                VStack(spacing: 1) {
                    // Title with image background
                    ZStack {
                        Image(.sunNew)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 700, height: 150)
                            .offset(y: -80)
                            .offset(x: 30)
                        
                        Image("4")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 100)
                            .offset(x: 155, y: -130)
                        
                        // Buttons on the top right corner
                        .toolbar {
                            // Heart and Gear buttons
                            ToolbarItemGroup(placement: .navigationBarTrailing) {
                                Button(action: {
                                    //Action for the button go here
                                }) {
                                    Image(systemName: "heart.fill")
                                }
                                
                                Button(action: {
                                    //Action for the button go here
                                }) {
                                    Image(systemName: "gearshape.fill")
                                }
                            }
                        }
                        
                        Text("RAE")
                            .font(.system(size: 25, weight: .bold))
                            .multilineTextAlignment(.center)
                            .padding(.top, -110)
                        
                        Text("Reading Affirmations Everyday")
                            .font(.system(size: 20, weight: .bold))
                            .multilineTextAlignment(.center)
                            .padding(.top, -80)
                    }
                    
                    // Top Cloud with text
                    NavigationLink {
                        ScreenTwo()
                    } label: {
                        ZStack {
                            
                            Image("1")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 175)

//                            Text("Looking Good")
//                                .foregroundStyle(.black)
//                                .font(.system(size: 25, weight: .bold))
//                                .padding()
                        }
                        .offset(x: topCloudOffsetX, y: topCloudOffsetY) // Apply offset to the entire ZStack
                        .shadow(radius: 1)
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: 19).repeatForever(autoreverses: true)) {
                                topCloudOffsetX = 85 // Slowed horizontal movement
                            }
                            withAnimation(Animation.easeInOut(duration: 22).repeatForever(autoreverses: true)) {
                                topCloudOffsetY = 20 // Slowed vertical movement
                            }
                        }
                    }
                    
                    // Mid Cloud with text
                    NavigationLink {
                        ScreenTwo()
                    } label: {
                        ZStack {
                            Image("2")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 170)

//                            Text("Keep Going!")
//                                .font(.system(size: 25, weight: .bold))
//                                .foregroundColor(.black)
//                                .padding()
                        }
                        .offset(x: midCloudOffsetX, y: midCloudOffsetY) // Apply offset to the entire ZStack
                        .shadow(radius: 1)
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: 18).repeatForever(autoreverses: true)) {
                                midCloudOffsetX = -90 // Slowed horizontal movement
                            }
                            withAnimation(Animation.easeInOut(duration: 18).repeatForever(autoreverses: true)) {
                                midCloudOffsetY = -30 // Slowed vertical movement
                            }
                        }
                    }
                    
                    // Last Cloud with text
                    NavigationLink{
                        ScreenTwo()
                    } label: {
                        ZStack {
                            Image("3")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 165)

//                            Text("You Rock!")
//                                .font(.system(size: 25, weight: .bold))
//                                .foregroundColor(.black)
//                                .padding()
                        }
                        .offset(x: lastCloudOffsetX, y: lastCloudOffsetY) // Apply offset to the entire ZStack
                        .shadow(radius: 1)
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: 30).repeatForever(autoreverses: true)) {
                                lastCloudOffsetX = 0 // Slowed horizontal movement
                            }
                            withAnimation(Animation.easeInOut(duration: 19).repeatForever(autoreverses: true)) {
                                lastCloudOffsetY = 40 // Slowed vertical movement
                            }
                        }
                    }
                }
                .interactiveDismissDisabled(false) // Ensure swiping down is enabled

            }
        }
    }
}

#Preview {
    ContentView()
}