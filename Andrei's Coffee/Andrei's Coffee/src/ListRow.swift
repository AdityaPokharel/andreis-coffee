//
//  ListRow.swift
//  Andrei's Coffee
//
//  Created by Andy on 30/4/21.
//

import SwiftUI

struct CoffeeCircleImage: View {
    let image: String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 70)
    }
}


struct ListRow: View {
    let rowModel: CoffeeRowModel
    let onPressFavorite: () -> Void

    var body: some View {
        HStack(spacing: 16) {
            CoffeeCircleImage(image: rowModel.name)
            VStack(alignment: .leading) {
                Text(rowModel.name)
                    .fontWeight(.bold)
                Text(rowModel.description)
            }
            Spacer()

            Button(action: onPressFavorite) {
                Image(systemName: rowModel.isFavorite ? "star.fill" : "star")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(rowModel: CoffeeRowModel(name: "Cappuccino", description: "Frothy ass coffee", isFavorite: true)) {
            print("Button pressed!!")
        }
    }
}
