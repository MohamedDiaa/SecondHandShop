//
//  ContainerVIew.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-20.
//

import SwiftUI

struct ContainerView: View {

    @StateObject var router = Router()

    var body: some View {
        
        NavigationStack(path: $router.navPath) {
            HomeView()
                .navigationDestination(for: Router.Destination.self) { destination in

                    switch destination {
                    case .FashionMerchants:
                        FashionMerchants()
                    case .Merchants(let product):
                        MerchantsView(product: product)
                    }
                }
            }
        .environmentObject(router)
    }
}

#Preview {
    ContainerView()
}
