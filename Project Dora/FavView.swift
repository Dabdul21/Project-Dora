//
//  FavView.swift
//  Project Dora
//
//  Created by Dayan Abdulla on 9/30/24.
//

import SwiftUI

struct FavView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    FavView()
}








//
//  ContentView.swift
//  Project Dora
//
//  Created by Dayan Abdulla on 9/26/24.
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        // tells the code we want to navigate to a page
//        NavigationStack {
//            ZStack {
//                //  Background gradient
//                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.9), Color.white]), startPoint: .top, endPoint: .bottom)
//                    .edgesIgnoringSafeArea(.all)
//                
//                VStack(spacing: 1) {
//                    // Title with image background
//                    ZStack {
//                        Image(.sunNew)
//                            .resizable()
//                            .scaledToFill() // Change to scaledToFill to fill the frame
//                            .frame(width: 700, height: 150) // Adjust the size as needed
//                            .offset(y: -80)
//                            .offset(x: 30)
//                        
//                        Image("2")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(height: 90) // Cloud frame height
//                            .offset(x: 165)
//                            .offset(y: -150)
//                        
//                        
//                        
//                        Text("RAE")
//                            .font(.system(size: 20, weight: .bold))
//                            .multilineTextAlignment(.center)
//                            .padding(.top, -110)
//                        
//                        Text("Reading Affirmations Everyday")
//                            .font(.system(size: 20, weight: .bold))
//                            .multilineTextAlignment(.center)
//                            .padding(.top, -80)
//                    }
////                    .shadow(radius: 1)
//                    
//                    
//                    // Top Cloud with text
//                    
//                    NavigationLink {
//                        // file destination
//                        ScreenTwo()
//                    } label: {
//                        // label for your destination
//                        ZStack {
//                            Image("1")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(height: 160) // Cloud frame height
//                                .offset(x: -55)
//                            Text("Looking Good")
//                                .foregroundStyle(.black)
//                                .font(.system(size: 25, weight: .bold))
//                                .padding()
//                                .offset(x: -55)
//                        }
//                        .shadow(radius: 1)
//                        
//                    }
//                    
//                    // Mid Cloud with text
//                    NavigationLink {
//                        // file destination
//                        ScreenTwo()
//                    } label: {
//                        
//                        ZStack {
//                            Image("2")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(height: 150) // Cloud frame height
//                                .offset(x: 60) // Adjust this value to move the image to the left
//                            
//                            Text("Keep Going!")
//                                .font(.system(size: 25, weight: .bold))
//                                .foregroundColor(.black)
//                                .padding()
//                                .offset(x: 60)
//                        }
//                        .shadow(radius: 1)
//                    }
//                    
//                    // Last Cloud with text
//                    NavigationLink{
//                        ScreenTwo()
//                    } label: {
//                        
//                        ZStack {
//                            Image("3")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(height: 145) // Cloud frame height
//                                .offset(x: -60)
//                            
//                            Text("You Rock!")
//                                .font(.system(size: 25, weight: .bold))
//                                .foregroundColor(.black)
//                                .padding()
//                                .offset(x: -60)
//                            
//                        }
//                        .shadow(radius: 1)
//                    }
//                }
//                
//                
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
