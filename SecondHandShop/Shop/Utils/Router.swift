//
//  Router.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-20.
//

import Foundation
import SwiftUI

class Router: ObservableObject {

    @Published var navPath = NavigationPath()

    enum Destination: Hashable {
        case FashionMerchants
        case Merchants(Product)
    }

    func routeTo(_ destination: Destination) {
        navPath.append(destination)
    }

    func popToPrevious() {
        navPath.removeLast()
    }

    func popScreens(_ amount: Int) {
        navPath.removeLast(amount)
    }

    func popToRoot() {
        navPath = NavigationPath()
    }
}
