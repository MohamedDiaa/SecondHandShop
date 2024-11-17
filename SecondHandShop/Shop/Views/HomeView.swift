//
//  HomeView.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-17.
//

import SwiftUI

struct HomeView: View {

   @State var Products: [Product] = [.appliances ,
                               .clothes,
                               .electronics,
                               .furnitures,
                               .toys,
                               .vehicles]
    var body: some View {

        VStack {
            HStack {
                Text("Home")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                Spacer()
            }
            .padding(.horizontal)
            ScrollView{
                VStack {
                    ForEach(Products, id: \.self) { product in

                        productView(product: product)
                    }
                }
                .navigationTitle("Home")

            }
        }
    }

    
    @ViewBuilder
    func productView(product: Product) -> some View {
        
        VStack(alignment: .leading) {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(.rect(cornerRadius: 15))


            Text(product.rawValue)
                .fontWeight(.semibold)
                .padding(.leading, 10)
                .padding(.bottom, 10)

            }
        .background(
            .gray.opacity(0.2))
        .padding(10)
        .clipShape(.rect(cornerRadius: 15))

        }
}

#Preview {
    HomeView()
}
