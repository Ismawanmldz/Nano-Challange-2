//
//  TabView.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/27/22.
//

import SwiftUI

struct TabViewPage: View {
    
    @State var selectedTab: Int = 1
    
    init() {
            UITabBar.appearance().unselectedItemTintColor = UIColor.lightGray
            UITabBar.appearance().backgroundColor = UIColor.darkGray
        }
    
    var body: some View {
        
        TabView (selection: $selectedTab){
            ContentView(selectedTab: $selectedTab)
                .tabItem{
                    Image(systemName: "wallet.pass")
                    Text("Asset")
                }
                .tag(0)
            ContentView2(selectedTab: $selectedTab)
                .tabItem{
                    Image(systemName: "text.badge.plus")
                    Text("Income")
                }
                .tag(1)
            ContentView3(selectedTab: $selectedTab)
                .tabItem{
                    Image(systemName: "text.badge.minus")
                    Text("Outcome")
                }
                .tag(2)
        }
        .accentColor(Color("lightGold"))
    }
}

struct TabViewPage_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPage()
    }
}
