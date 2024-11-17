//
//  Item.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-17.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
