//
//  MainView.swift
//  HackingSwiftLearn
//
//  Created by Eren on 31.07.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            
            FavoriteView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.circle.fill")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(Order())
        .environmentObject(Favorite())
}
