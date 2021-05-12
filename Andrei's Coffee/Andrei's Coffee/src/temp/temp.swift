//
//  temp.swift
//  Andrei's Coffee
//
//  Created by Andy on 30/4/21.
//

import SwiftUI

struct temp: View {
    func onPressButton() {
        print("Hello world!")
    }

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...3000, id: \.self) { value in
                    Text("Row: \(value)")
                }
            }
        }
    }
}

struct temp_Previews: PreviewProvider {
    static var previews: some View {
        temp()
    }
}
