//
//  HomeView.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-17.
//

import SwiftUI

struct HomeView: View {

    @State var Products: [Product] = [.appliances ,
                                      .fashion,
                                      .electronics,
                                      .furnitures,
                                      .toys,
                                      .vehicles]
    @EnvironmentObject var router: Router

    @State var searchText = ""


    var body: some View {

        VStack {

            ScrollView{
                searchView()
                    .padding(.horizontal, 15)
                VStack {
                    ForEach(Products, id: \.self) { product in

                        productView(product: product)
                    }

                    Button {
                      //  router.routeTo(.FashionMerchants)
                    } label: {
                        Text("Go Checkout")
                            .tint(.black)
                    }
                    .frame(width: 200)
                    .padding(10)
                    .background(.gray.opacity(0.3))
                    .clipShape(Capsule())
                }
            }
        } .navigationTitle("Home")

    }


    @ViewBuilder
    func productView(product: Product) -> some View {

        VStack(alignment: .leading) {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(.rect(cornerRadius: 15))


            Text(product.rawValue)
                .font(.system(size: 18, weight: .bold))
                .padding(12)

        }
        .background(
            .gray.opacity(0.4))
        .clipShape(.rect(cornerRadius: 15))
        .padding(10)
        .onTapGesture {
            switch product {
            case .fashion:
                router.routeTo(.Merchants(product))
            default:
                router.routeTo(.Merchants(product))
            }
        }

    }

    @ViewBuilder
    func searchView() -> some View {

        HStack(spacing: 15) {
            
            Image(systemName: "magnifyingglass")
            TextField("Search", text: $searchText)
        }
        .padding(.vertical,10)
        .padding(.horizontal, 15)
        .background(Color.primary.opacity(0.06), in: .rect(cornerRadius: 5))

    }
}

#Preview {
    HomeView()
}
