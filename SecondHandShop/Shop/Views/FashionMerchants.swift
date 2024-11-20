//
//  FashionMerchants.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-20.
//

import SwiftUI

struct FashionMerchants: View {

    var body: some View {
        
        ScrollView(.vertical) {
            VStack {

                ForEach(fashionMerchants) { merchant in
              
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
    FashionMerchants()
}
