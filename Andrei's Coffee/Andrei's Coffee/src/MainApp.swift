//
//  MainApp.swift
//  Andrei's Coffee
//
//  Created by Andy on 30/4/21.
//


import SwiftUI

struct MainApp: View {
    @State var coffeeList = [
        CoffeeRowModel(name: "Cappuccino", description: "Frothy ass coffee", isFavorite: false),
        CoffeeRowModel(name: "Latte", description: "Slightly less frothier than a cap", isFavorite: false),
        CoffeeRowModel(name: "Long black", description: "Water with a double shot espresso over it", isFavorite: false),
        CoffeeRowModel(name: "Flat white", description: "Espresso + non-frothy milk.", isFavorite: false),
        CoffeeRowModel(name: "Cold brew", description: "Don't ask. Too boujee.", isFavorite: false)
    ]

    func onFavoriteCoffee(coffee: CoffeeRowModel) {
        if let index = coffeeList.firstIndex(where: { model in model.name == coffee.name }) {
            coffeeList[index] = CoffeeRowModel(name: coffee.name, description: coffee.description, isFavorite: !coffee.isFavorite)
        }
    }

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16) {
                TopBanner()
                FavoriteCoffeeList(favCoffees: coffeeList.filter {coffee in coffee.isFavorite})
                CoffeeList(coffeeList: coffeeList, onPressFav: onFavoriteCoffee)
            }
        }
        .ignoresSafeArea()
    }
}

struct MainApp_Previews: PreviewProvider {
    static var previews: some View {
        MainApp()
    }
}
