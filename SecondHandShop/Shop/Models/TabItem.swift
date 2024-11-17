//
//  TabItem.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-18.
//

import Foundation

enum TabItem: String {

    case home = "Home"
    case settings = "Settings"
    
    var systemName: String {

        switch self {
        case .home:
            return "house.fill"
        case .settings:
            return "gearshape.fill"
        }
    }
}

