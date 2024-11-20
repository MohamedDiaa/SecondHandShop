//
//  Product.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-17.
//

import Foundation
import SwiftUI

enum Product: String ,CaseIterable {

    case appliances = "Appliances"
    case fashion = "Fashion"
    case electronics = "Electronics"
    case furnitures = "Furnitures"
    case toys = "Toys"
    case vehicles = "Vehicles"

    var imageName: String {
        self.rawValue.lowercased()
    }
    
    var name: String {
        return self.rawValue
    }

    var merchants:[Merchant] {
        switch self {
        case .appliances:
            return appliancesMerchants
        case .fashion:
            return fashionMerchants
        case .furnitures:
            return furnitureMerchants
        case .vehicles:
            return vehicleMerchants
        default:
            return []
        }
    }
}
