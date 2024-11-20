//
//  MerchantsView.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-20.
//

import SwiftUI

struct MerchantsView: View {
    
    let product: Product
    @State var selected: Merchant?

    var body: some View {

        ScrollView(.vertical) {
            VStack {

                ForEach(product.merchants) { merchant in

                    HStack(alignment:.center){
                        Image(merchant.logo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 50)

                    }
                    .padding()
                    .onTapGesture {
                        selected = merchant
                    }
                }
            }
            .sheet(item: $selected) { item in

                MerchantDetailsView(merchant: item)
                    .presentationDetents([.height(500)])
                    .presentationDragIndicator(.visible)
                    .presentationCornerRadius(24)
            }

        }
        .scrollIndicators(.hidden)
        .navigationTitle(product.name)

    }
}

#Preview {
    MerchantsView(product: .fashion)
}
