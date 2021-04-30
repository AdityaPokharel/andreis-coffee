//
//  CoffeeList.swift
//  Andrei's Coffee
//
//  Created by Andy on 30/4/21.
//

import SwiftUI

struct CoffeeList: View {
    let coffeeList: [CoffeeRowModel]
    let onPressFav: (CoffeeRowModel) -> Void

    var body: some View {
        VStack(alignment: .leading) {
            Text("All coffees")
                .font(.footnote)
                .fontWeight(.bold)
            ForEach(coffeeList, id: \.name) { coffee in
                ListRow(rowModel: coffee, onPressFavorite: {
                    onPressFav(coffee)
                })
            }
        }
        .padding(.horizontal, 16)
    }
}

struct CoffeeList_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeList(coffeeList: [
            CoffeeRowModel(name: "Cappuccino", description: "frothy ass coffee", isFavorite: true),
            CoffeeRowModel(name: "Latte", description: "Less frothy than a cap", isFavorite: false)
        ]) {coffee in}
    }
}
