//
//  TopBanner.swift
//  Andrei's Coffee
//
//  Created by Andy on 30/4/21.
//

import SwiftUI

struct TopBanner: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("coffee-banner")
                .resizable()
                .scaledToFit()
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Andrei's Coffee")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Come taste the best coffee in Sydney")
                            .font(.body)
                    }
                    .foregroundColor(.white)
                    Spacer()
                    Text("☕️")
                        .font(.title)
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 8)
            }
        }
    }
}

struct VHZStack_Previews: PreviewProvider {
    static var previews: some View {
        TopBanner()
    }
}
