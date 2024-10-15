////
////  stress .swift
////  Project Dora
////
////  Created by Dayan Abdulla on 10/7/24.
////
//
////
////  ContentView.swift
////  Project Dora
////
////  Created by Dayan Abdulla on 9/26/24.
////
//import SwiftUI
//
//struct ContentView: View {
//    // Initial offsets for the clouds
//    @State private var topCloudOffsetX: CGFloat = -55
//    @State private var topCloudOffsetY: CGFloat = -10
//    @State private var midCloudOffsetX: CGFloat = 60
//    @State private var midCloudOffsetY: CGFloat = 10
//    @State private var lastCloudOffsetX: CGFloat = -60
//    @State private var lastCloudOffsetY: CGFloat = -15
//
//    var body: some View {
//        NavigationStack {
//            ZStack {
//                // Background gradient
//                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.9), Color.white]), startPoint: .top, endPoint: .bottom)
//                    .edgesIgnoringSafeArea(.all)
//                
//                VStack(spacing: 1) {
//                    // Title with image background
//                    ZStack {
//                        Image(.sunNew)
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: 700, height: 150)
//                            .offset(y: -80)
//                            .offset(x: 30)
//                        
//                        Image("2")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(height: 90)
//                            .offset(x: 165, y: -150)
//                        
//                        Text("RAE")
//                            .font(.system(size: 25, weight: .bold))
//                            .multilineTextAlignment(.center)
//                            .padding(.top, -110)
//                        
//                        Text("Reading Affirmations Everyday")
//                            .font(.system(size: 20, weight: .bold))
//                            .multilineTextAlignment(.center)
//                            .padding(.top, -80)
//                    }
//                    
//                    // Top Cloud with text
//                    NavigationLink {
//                        ScreenTwo()
//                    } label: {
//                        ZStack {
//                            Image("1")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(height: 175)
//
//                            Text("Looking Good")
//                                .foregroundStyle(.black)
//                                .font(.system(size: 25, weight: .bold))
//                                .padding()
//                        }
//                    }
//                    
//                    // Mid Cloud with text
//                    NavigationLink {
//                        ScreenTwo()
//                    } label: {
//                        ZStack {
//                            Image("2")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(height: 170)
//
//                            Text("Keep Going!")
//                                .font(.system(size: 25, weight: .bold))
//                                .foregroundColor(.black)
//                                .padding()
//                        }
//                      
//                    }
//                    
//                    // Last Cloud with text
//                    NavigationLink{
//                        ScreenTwo()
//                    } label: {
//                        ZStack {
//                            Image("3")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(height: 165)
//
//                            Text("You Rock!")
//                                .font(.system(size: 25, weight: .bold))
//                                .foregroundColor(.black)
//                                .padding()
//                        }
//                    }
//                }
//            }
//            .offset(x: lastCloudOffsetX, y: lastCloudOffsetY) // Apply offset to the entire ZStack
//            .shadow(radius: 1)
//            .onAppear {
//                withAnimation(Animation.easeInOut(duration: 30).repeatForever(autoreverses: true)) {
//                    lastCloudOffsetX = 80 // Slowed horizontal movement
//                }
//                withAnimation(Animation.easeInOut(duration: 30).repeatForever(autoreverses: true)) {
//                    lastCloudOffsetY = 40 // Slowed vertical movement
//                }
//            }
//
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}



