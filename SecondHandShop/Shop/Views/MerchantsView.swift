//
//  MerchantsView.swift
//  SecondHandShop
//
//  Created by Mohamed Alwakil on 2024-11-20.
//

import SwiftUI

enum Column: String, CaseIterable {
    case single = "Single"
    case double = "Double"
}

struct MerchantsView: View {
    
    @State private var selected: Merchant?
    @State private var column: Column = .single
    let product: Product
    private let gridColumns = [GridItem(), GridItem()]

    var body: some View {
        
        Picker("", selection: $column) {
            ForEach(Column.allCases, id: \.self) { col in
                Text(col.rawValue)
            }
        }
        .pickerStyle(.segmented)
        .padding()

        ScrollView(.vertical) {
            VStack {
                switch column {
                case .single:
                    MerchantList()
                case .double:
                    LazyVGrid(columns: gridColumns, content: {
                        MerchantList()
                    })
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

    @ViewBuilder
    func MerchantList() -> some View {
        
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
}

#Preview {
    MerchantsView(product: .fashion)
}
