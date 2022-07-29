//
//  iAssetApp.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/24/22.
//

import SwiftUI

@main
struct iAssetApp: App {
    
    //untuk inject database
    @StateObject private var dataController = DataController()
//    @StateObject private var dataController2 = DataController2()
    
    var body: some Scene {
        WindowGroup {
//            ContentView(selectedTab: $selectedTab)
            TabViewPage()
                .environment(\.managedObjectContext, dataController.container.viewContext)
//                .environment(\.managedObjectContext, dataController2.container.viewContext)
                
        }
    }
}
