//
//  ScreenTwo.swift
//  Project Dora
//
//  Created by Dayan Abdulla on 9/30/24.
//
import SwiftUI

//@State private var 
//


struct ScreenTwo: View {
    // controls the drop down visability
    @State private var showDropdown = false
    //quotes
    @State private var displayedQuote: String = happyQuotes.randomElement() ?? "Stay positive RAE!"

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
            
                
                ZStack {
                    
                    Image("c")//top
                        .resizable()
                        .scaledToFit()
                        .frame(height:170)
                        .offset(CGSize(width: 155, height: -240))
                    
                    Image("c")//bottom
                        .resizable()
                        .scaledToFit()
                        .frame(height:170)
                        .offset(CGSize(width: 100, height: 330))
    
                    
                    Image("c")//mid
                        .resizable()
                        .scaledToFit()
                        .frame(height:130)
                        .offset(CGSize(width: -250, height: -90))
                
                    
                }

                

                VStack(spacing: 10) { // Spacing between rows
                    // Happy and Motivated images with text
                    HStack {
                        // Happy Section
                        VStack(spacing: 2) {
                            Button(action: {
                                displayedQuote = happyQuotes.randomElement() ?? "A happy quote goes here"
                                showDropdown.toggle()
                            }) {
                                VStack {
                                    Image("Happy")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 170)
                                        .cornerRadius(20)
                                        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)

                                    Text("Happy")
                                        .font(.system(size: 22, weight: .bold))
                                        .foregroundColor(Color.white)
                                        .padding(.vertical, 4)
                                        .padding(.horizontal, 20)
                                        .background(Color.blue.opacity(0.05)) // Slight opacity for visibility
                                        .cornerRadius(20)
                                        .shadow(color: .black.opacity(0.4), radius: 3, x: 1, y: 1)
                                        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
                                }
                            }
                        }
                        
                        Spacer().frame(width: 30) // Controls the spacing between buttons

                        // Motivated Section
                        VStack(spacing: 2) {
                            Button(action: {
                                displayedQuote = motivatedQuotes.randomElement() ?? "A motivated quote goes here"
                                showDropdown.toggle()
                            }) {
                                VStack {
                                    Image("Motivated")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 170)
                                        .cornerRadius(20)
                                        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)

                                    Text("Motivated")
                                        .font(.system(size: 22, weight: .bold))
                                        .foregroundColor(Color.white)
                                        .padding(.vertical, 4)
                                        .padding(.horizontal, 20)
                                        .background(Color.blue.opacity(0.05)) // Slight opacity for visibility
                                        .cornerRadius(20)
                                        .shadow(color: .black.opacity(0.4), radius: 3, x: 1, y: 1)
                                        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
                                }
                            }
                        }
                    }
                    // Mellow and Upset images with text
                    HStack {
                        // Mellow Section
                        VStack(spacing: 2) {
                            Button(action: {
                                displayedQuote = mellowQuotes.randomElement() ?? "A mellow quote goes here"
                                showDropdown.toggle()
                            }) {
                                VStack {
                                    Image("Mellow")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 170)
                                        .cornerRadius(20)
                                        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
                                    
                                    Text("Mellow")
                                        .font(.system(size: 22, weight: .bold))
                                        .foregroundColor(Color.white)
                                        .padding(.vertical, 4)
                                        .padding(.horizontal, 20)
                                        .background(Color.blue.opacity(0.05))  // Slightly increased opacity for visibility
                                        .cornerRadius(20)
                                        .shadow(color: .black.opacity(0.4), radius: 3, x: 1, y: 1)
                                        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
                                }
                            }
                        }

                        Spacer().frame(width: 30) // Controls the spacing between buttons

                        // Upset Section
                        VStack(spacing: 2) {
                            Button(action: {
                                displayedQuote = upsetQuotes.randomElement() ?? "An upset quote goes here"
                                showDropdown.toggle()
                            }) {
                                VStack {
                                    Image("Upset")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 170)
                                        .cornerRadius(20)
                                        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
                                    
                                    Text("Upset")
                                        .font(.system(size: 22, weight: .bold))
                                        .foregroundColor(Color.white)
                                        .padding(.vertical, 4)
                                        .padding(.horizontal, 20)
                                        .background(Color.blue.opacity(0.05))  // Increased opacity for better visibility
                                        .cornerRadius(20)
                                        .shadow(color: .black.opacity(0.4), radius: 3, x: 1, y: 1)
                                        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
                                }
                            }
                        }
                    }.padding(.horizontal)

                    // Dora image with "Keep Going!" text
                    VStack {
                        Button(action: {
                            showDropdown.toggle()
                            displayedQuote = allQuotes.randomElement() ?? "A random quote goes here"

                        }) {
                            ZStack  {
                                VStack {
                                    Image("Dora")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 190)
                                        .cornerRadius(20)
                                        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
                                    
                                }
                            }
                            Text("Keep Going!")
                                .font(.system(size: 26, weight: .bold))
                                .foregroundColor(Color.white)
                                .padding(.vertical, 4)
                                .padding(.horizontal, 20)
                                .background(Color.blue.opacity(0.03)) // Slight opacity for visibility
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.4), radius: 3, x: 1, y: 1)
                                .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
                        }
                    }.padding(.horizontal)
                }

            }
            
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
            .navigationTitle("Choose a Mood")
            
            // Full-screen dropdown
            .fullScreenCover(isPresented: $showDropdown) {
                ZStack {
                    // Background for the dropdown
                    LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.9), Color.white]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)

                    ZStack {
                        //top
                        Image("c")
                            .resizable()
                            .scaledToFit()
                            .frame(height:170)
                            .offset(CGSize(width: 155, height: -360))
                        
                        
                        //bottom
                        Image("c")
                            .resizable()
                            .scaledToFit()
                            .frame(height:180)
                            .offset(CGSize(width: 120, height: 300))
                    
                        //mid
                        Image("c")
                            .resizable()
                            .scaledToFit()
                            .frame(height:160)
                            .offset(CGSize(width: -255, height: -85))
                    
                        
                    }
                    VStack {
                        Spacer()
                       
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
                                .fixedSize(horizontal: false, vertical: true)
                        
                                .padding(5)
                        
                        Image("cactus")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 350)
                        Spacer()
                        
                        Button(action: {
                            showDropdown = false // Close the dropdown
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
                    } // Buttons on the top right corner
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
                }
            }
        }
    }
}
#Preview {
    ScreenTwo()
}
