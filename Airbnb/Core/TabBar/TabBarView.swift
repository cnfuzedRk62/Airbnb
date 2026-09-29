//
//  TabBarView.swift
//  Airbnb
//
//  Created by Ravi on 29/09/26.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem {
                   Label("Explore", systemImage: "magnifyingglass")
                }
            WishListView()
                .tabItem {
                   Label("Wishlist", systemImage: "heart")
                }
            ProfileView()
                .tabItem {
                   Label("Profile", systemImage: "person")
                }

        }
    }
}

#Preview {
    TabBarView()
}
