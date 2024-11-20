//
//  MerchantsView.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-20.
//

import SwiftUI

struct MerchantsView: View {
    
    let merchants: [Merchant]

    var body: some View {

        ScrollView(.vertical) {
            VStack {

                ForEach(merchants) { merchant in

                    HStack(alignment:.center){
                        Image(merchant.logo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 50)

                    }
                    .padding()
                }
            }
        }
        .scrollIndicators(.hidden)
        .navigationTitle("Fashion")

    }
}

#Preview {
    MerchantsView(merchants: fashionMerchants)
}
