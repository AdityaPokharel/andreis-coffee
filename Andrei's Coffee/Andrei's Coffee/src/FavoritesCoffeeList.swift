//
//  FavoritesCoffeeList.swift
//  Andrei's Coffee
//
//  Created by Andy on 30/4/21.
//

import SwiftUI

struct FavoriteCoffeeList: View {
    let favCoffees: [CoffeeRowModel]
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Your favorites")
                .font(.footnote)
                .fontWeight(.bold)
                .padding(.horizontal, 16)
            ScrollView(.horizontal) {
                LazyHStack(spacing: 8) {
                    if !favCoffees.isEmpty {
                        ForEach(favCoffees, id: \.name) { coffee in
                            VStack {
                                CoffeeCircleImage(image: coffee.name)
                                Text(coffee.name)
                                    .font(.footnote)
                            }
                        }
                        .padding(.leading, 16)
                    } else {
                        Text("You don't have any favorites. Star some coffees first.")
                            .foregroundColor(.gray)
                            .font(.footnote)
                            .padding(.horizontal, 24)
                    }
                }
            }
            .frame(height: 100)
        }
    }
}

struct FavoriteCoffeeList_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteCoffeeList(favCoffees: [
            CoffeeRowModel(name: "Cappuccino", description: "Frothy ass coffee", isFavorite: true),
            CoffeeRowModel(name: "Latte", description: "Another coffee", isFavorite: true),
            CoffeeRowModel(name: "Flat white", description: "basic shit", isFavorite: true)
        ])
    }
}
