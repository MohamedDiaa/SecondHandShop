//
//  SecondHandShopApp.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-17.
//

import SwiftUI
import SwiftData

@main
struct SecondHandShopApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            //ContentView()
            TabView {
                
                ContainerView()
                    .tabItem {
                        Image(systemName: TabItem.home.systemName)
                        Text(TabItem.home.rawValue)
                    }
                SettingView()
                    .tabItem {
                        Image(systemName: TabItem.settings.systemName)
                        Text(TabItem.settings.rawValue)
                    }

            }
        }
        .modelContainer(sharedModelContainer)
    }
}
