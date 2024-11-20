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

var appliancesMerchants: [Merchant] = [
    .init(name: "Amana", logo: "amana"),
    .init(name: "beko", logo: "beko"),
    .init(name: "Bosch", logo: "bosch"),
    .init(name: "dyson", logo: "dyson"),
    .init(name: "Electrolux", logo: "electrolux"),
    .init(name: "Frigidaire", logo: "frigidaire"),
    .init(name: "Gaggenau", logo: "gaggenau"),
    .init(name: "Hotpoint", logo: "hotpoint"),
    .init(name: "KitchenAid", logo: "kitchenaid"),
    .init(name: "LG", logo: "LG"),
    .init(name: "Miele", logo: "miele"),
    .init(name: "Panasonic", logo: "panasonic"),
    .init(name: "Samsung", logo: "samsung"),
    .init(name: "Whirlpool", logo: "whirlpool")
]


var furnitureMerchants: [Merchant] = [
    .init(name: "Ashley", logo: "ashley"),
    .init(name: "IKea", logo: "ikea"),
    .init(name: "Meco", logo: "meco"),
    .init(name: "Murphy", logo: "murphy")
]

var vehicleMerchants: [Merchant] = [
    .init(name: "BMW", logo: "bmw"),
    .init(name: "Chevrolet", logo: "chevrolet"),
    .init(name: "FIAT", logo: "fiat"),
    .init(name: "Hyundai", logo: "hyundai"),
    .init(name: "INFINITI", logo: "infiniti"),
    .init(name: "JaGuar", logo: "jaguar"),
    .init(name: "KIA", logo: "kia"),
    .init(name: "Mercedes", logo: "mercedes"),
    .init(name: "Mitsubishi", logo: "mitsubishi"),
    .init(name: "Nissan", logo: "nissan"),
    .init(name: "Peugeot", logo: "peugeot"),
    .init(name: "RENAULT", logo: "renault"),
    .init(name: "Saubaru", logo: "saubaru"),
    .init(name: "Suzuki", logo: "suzuki"),
    .init(name: "VolkesVagen", logo: "volkesvagen")

]
