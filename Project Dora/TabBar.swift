//
//  TabBar.swift
//  Project Dora
//
//  Created by Dayan Abdulla on 9/30/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
                    ScreenTwo()
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }

                    FavView()
                        .tabItem {
                            Label("Order", systemImage: "square.and.pencil")
                        }
                }    }
}

#Preview {
    TabBar()
}
