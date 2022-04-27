//
//  WishlistView.swift
//  Collety
//
//  Created by Farrah Alifia on 27/04/22.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hey, book lover!\n\nYou don't have any wishlist right now:(")
                    .italic()
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .center)
            }.navigationTitle("Wishlist").offset(y: -60).navigationBarHidden(true)
        }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
