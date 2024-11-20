//
//  MerchantDetailsView.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-20.
//

import SwiftUI

struct MerchantDetailsView: View {
    
    let merchant: Merchant

    var body: some View {
        VStack {
            Text(merchant.name)
            Image(merchant.logo)
                .resizable()
                .aspectRatio(contentMode: .fit)

        }
        .padding(.horizontal, 10)
       }
}

#Preview {
    MerchantDetailsView(merchant: .init(name: "LG", logo: "LG"))
}
