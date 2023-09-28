//
//  MainTabConfig.swift
//  Billest
//
//  Created by Mac-albert on 28/09/23.
//

import SwiftUI

struct MainTabConfig: View {
    @State private var selectedTab = 0
    
    var body: some View {
        Text("Hello World")
//        TabView(selection: $selectedTab) {
//            MealTabItemView()
//            .tabItem {
//                Image(systemName: "fork.knife")
//                Text("Meal")
//            }
//            .tag(0)
//            SearchTabItemView(isModal: false)
//                .tabItem {
//                    Image(systemName: "magnifyingglass")
//                    Text("Search")
//                }
//                .tag(1)
//        }
//        .accentColor(Color(hex: "#91B898"))
//        .navigationBarHidden(true)
    }
}

struct MainTabConfig_Previews: PreviewProvider {
    static var previews: some View {
        MainTabConfig()
    }
}
