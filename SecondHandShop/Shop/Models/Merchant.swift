//
//  Merchant.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-18.
//

import Foundation

struct Merchant: Identifiable {

    var id = UUID()
    var name: String
    var logo: String
}


var fashionMerchants: [Merchant] = [
    .init(name: "Carties", logo: "Cartier"),
    .init(name: "Chanel", logo: "Chanel"),
    .init(name: "Louis Vuitton", logo: "LouisVuitton"),
    .init(name: "Rolex", logo: "Rolex"),
    .init(name: "Nike", logo: "Nike"),
    .init(name: "Zara", logo: "Zara"),
    .init(name: "Gucci", logo: "Gucci"),
    .init(name: "Prada", logo: "Prada")
]


//key Path

